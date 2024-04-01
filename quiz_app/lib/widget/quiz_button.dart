import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton(this.isTrue, {Key? key}) : super(key: key);

  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
          child: Text(
            isTrue ? 'Туура' : 'Туура эмес',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: isTrue ? Color(0xff4CAF52) : Color(0xffF54335),
          )
          // style: ElevatedButton.styleFrom(
          //   primary: Color(0xff4CAF52),

          ),
    );
  }
}
