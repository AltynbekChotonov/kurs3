import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int san = 0;

  void koshuu() {
    san++;
    setState(() {});

    // san + 1;
    print(san);
  }

  @override
  Widget build(BuildContext context) {
    print('ishtedi');
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text(
            'flutter sabak',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Text('Бүгн Flutter ге өтyп жатабыз'),
          ),
          Text(
            '$san',
            style: TextStyle(fontSize: 25),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            koshuu();
          },
          child: const Icon(Icons.add),
        ));
  }
}
