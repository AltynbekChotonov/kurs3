import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diary_app/home/add_diary_page.dart';
import 'package:diary_app/home/diary_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    readDiarys();
  }

  Stream<QuerySnapshot> readDiarys() {
    final db = FirebaseFirestore.instance;
    return db.collection('diarys').snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(''),
      ),
      body: StreamBuilder(
          stream: readDiarys(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CupertinoActivityIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text(snapshot.error!.toString()));
            } else if (snapshot.hasData) {
              final List<Diary> diarys = snapshot.data!.docs
                  .map((e) => Diary.fromMap(e.data() as Map<String, dynamic>))
                  .toList();
              return ListView.builder(
                itemCount: diarys.length,
                itemBuilder: (BuildContext context, int index) {
                  final diary = diarys[index];
                  return Card(
                    child: ListTile(
                      title: Text(diary.title),
                      trailing: Checkbox(
                        value: diary.isCompleted,
                        onChanged: (v) {},
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(diary.description ?? ''),
                          Text(diary.author),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Center(child: Text('Some error'));
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const AddDiatyPage(),
              ));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
