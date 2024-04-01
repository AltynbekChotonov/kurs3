import 'package:flutter/material.dart';

class ResultIcon extends StatelessWidget {
  const ResultIcon(this.isTrue, {super.key});

  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    return Icon(
      isTrue ? Icons.check : Icons.close,
      color: isTrue ? Colors.green : Colors.red,
      size: 30,
    );
  }
}