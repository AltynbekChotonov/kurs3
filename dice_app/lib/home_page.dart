// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dice1 = 1;
  int dice2 = 2;

  // void change() {
  //   dice1 = Random().nextInt(7);
  //   print('dice1=$dice1');
  //   dice2 = Random().nextInt(7);
  //   print('dice2=$dice2');
  // }

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
            DiceImage(
              dice1,
              // onTap: () {
              //   dice1 = Random().nextInt(7);
              //   print('dice1=$dice1');
              // },
            ),
            DiceImage(
              dice2,
              // onTap: () {
              //   dice2 = Random().nextInt(7);
              //   print('dice2=$dice2');
              // },
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DiceImage extends StatefulWidget {
  DiceImage(
    this.index, {
    Key? key,
  }) : super(key: key);

  int index;
  //final void Function()? onTap;

  @override
  State<DiceImage> createState() => _DiceImageState();
}

class _DiceImageState extends State<DiceImage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () {
        setState(() {
          widget.index = Random().nextInt(7);
          //widget.onTap;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.asset(
            'assets/images/dice${widget.index == 0 ? 1 : widget.index}.png'),
      ),
    ));
  }
}
