// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_model.dart';
import 'package:quiz_app/widget/quiz_button.dart';
import 'package:quiz_app/widget/result_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List jooptor = <bool>[];
  List tuuraJooptor = <bool>[];
  List kataJooptor = <bool>[];

  void teksher(bool value) {
    if (quizess[index].answer == value) {
      jooptor.add(true);
      tuuraJooptor.add(true);
    } else {
      jooptor.add(false);
      kataJooptor.add(false);
    }
    setState(() {
      if (quizess[index] == quizess.last) {
        index = 0;
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Сиз бул тесттен"),
              content: Text(
                  'туура жооп.${tuuraJooptor.length}/ ката жооп.${kataJooptor.length}'),
            );
          },
        );
        jooptor.clear();
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Taпшырма - 10',
          style: TextStyle(color: Colors.black, fontSize: 28),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              quizess[index].question,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
            Spacer(),
            QuizButton(
              tuuraBattonbu: true,
              backanda: (maani) {
                teksher(maani);
              },
            ),
            SizedBox(height: 20),
            QuizButton(
              tuuraBattonbu: false,
              backanda: (maani) {
                teksher(maani);
              },
            ),
            SizedBox(height: 50),
            SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: jooptor.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int i) {
                  return jooptor[i] ? ResultIcon(true) : ResultIcon(false);
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
