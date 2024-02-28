import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Expanded'),
      ),
      body: Column(
        children: [
          Expanded(
            // flex: 2,
            child: Container(
              color: Colors.cyan,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: const Color.fromARGB(255, 32, 0, 212),
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 212, 0, 162),
            ),
          ),
        ],
      ),
    );
  }
}
