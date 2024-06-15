import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diary_app/home/diary_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddDiatyPage extends StatefulWidget {
  const AddDiatyPage({super.key});

  @override
  State<AddDiatyPage> createState() => _AddDiatyPageState();
}

class _AddDiatyPageState extends State<AddDiatyPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isCompleted = false;
  final _title = TextEditingController();
  final _description = TextEditingController();
  final _author = TextEditingController();

  Future<void> addDiary() async {
    final db = FirebaseFirestore.instance;
    final diary = Diary(
      title: _title.text,
      description: _description.text,
      isCompleted: _isCompleted,
      author: _author.text,
    );
    await db.collection("diarys").add(diary.toMap());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('AddDiatyPage'),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                TextFormField(
                  controller: _title,
                  decoration: const InputDecoration(
                      hintText: 'title', border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: _description,
                  maxLines: 7,
                  decoration: const InputDecoration(
                      hintText: 'Description', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 30),
                CheckboxListTile(
                    title: const Text('Is completed'),
                    value: _isCompleted,
                    onChanged: (v) {
                      setState(() {
                        _isCompleted = v ?? false;
                      });
                    }),
                const SizedBox(height: 30),
                TextFormField(
                  controller: _author,
                  decoration: const InputDecoration(
                      hintText: 'Author', border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 40),
                ElevatedButton.icon(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const CupertinoAlertDialog(
                              content: Center(
                                child: CupertinoActivityIndicator(),
                              ),
                            );
                          });
                      await addDiary();
                    }
                  },
                  icon: const Icon(Icons.publish),
                  label: const Text('Add Diary'),
                ),
              ],
            ),
          ),
        ));
  }
}
