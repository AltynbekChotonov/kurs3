import 'package:flutter/material.dart';
import 'package:flutter_sabak_4/counter2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Counter1(),
    );
  }
}

class Counter1 extends StatefulWidget {
  const Counter1({super.key});

  @override
  State<Counter1> createState() => _Counter1State();
}

class _Counter1State extends State<Counter1> {
  int ozgoruuchuSan = 0;

  // void koshuu() => setState(() {
  //       ozgoruuchuSan++;
  //     });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tапшырма01'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black12),
              width: 250,
              height: 40,
              child: Text(
                'сан:$ozgoruuchuSan',
                textAlign: TextAlign.center,
                style: const TextStyle(height: 3),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ozgoruuchuSan++;
                    setState(() {});
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 40),
                ElevatedButton(
                  onPressed: () {
                    ozgoruuchuSan--;
                    setState(() {});
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Counter2(syrttanKelgerSan: ozgoruuchuSan),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
