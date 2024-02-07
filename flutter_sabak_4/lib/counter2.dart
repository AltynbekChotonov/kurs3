import 'package:flutter/material.dart';

class Counter2 extends StatelessWidget {
  const Counter2({Key? key, required this.syrttanKelgerSan}) : super(key: key);

  final int syrttanKelgerSan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tапшырма02'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.black12),
            width: 250,
            height: 40,
            child: Text(
              'сан:$syrttanKelgerSan',
              textAlign: TextAlign.center,
              style: const TextStyle(height: 3),
            ),
          ),
        ]),
      ),
    );
  }
}
