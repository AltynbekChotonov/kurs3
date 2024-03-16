// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:math';

import 'package:flutter/material.dart';

class Home2Page extends StatefulWidget {
  const Home2Page({super.key});

  @override
  State<Home2Page> createState() => _Home2PageState();
}

class _Home2PageState extends State<Home2Page> {
  int dice1 = 1;
  int dice2 = 2;

  void change() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF5353),
      appBar: AppBar(
        backgroundColor: const Color(0xffFF5353),
        centerTitle: true,
        title: const Text(
          'ТАПШЫРМА_07',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            DiceImage2(
              index: dice1 == 0 ? 1 : dice1,
              onTap: change,
            ),
            DiceImage2(
              index: dice2 == 0 ? 1 : dice2,
              onTap: change,
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DiceImage2 extends StatelessWidget {
  const DiceImage2({
    super.key,
    this.onTap,
    required this.index,
  });

  final void Function()? onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.asset('assets/images/dice$index.png'),
      ),
    ));
  }
}
