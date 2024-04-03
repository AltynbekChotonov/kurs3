import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton(
      {required this.tuuraBattonbu, Key? key, required this.backanda})
      : super(key: key);

  final bool tuuraBattonbu;
  final void Function(bool) backanda;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
          child: Text(
            tuuraBattonbu ? 'Туура' : 'Туура эмес',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          onPressed: () => backanda(!tuuraBattonbu),
          style: ElevatedButton.styleFrom(
            backgroundColor:
                tuuraBattonbu ? Color(0xff4CAF52) : Color(0xffF54335),
          )),
    );
  }
}
