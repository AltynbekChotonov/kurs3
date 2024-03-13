// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/model.dart';

class HomePage extends StatelessWidget {
  const HomePage(
    this.student, {
    Key? key,
  }) : super(key: key);

  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFEC107),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 8.0,
        shadowColor: Colors.black,
        centerTitle: true,
        backgroundColor: Color(0XFFFEC107),
        title: Text(
          student.name,
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'I’m Rich',
            style: GoogleFonts.sofia(
                color: Color.fromARGB(255, 0, 0, 0), fontSize: 48, height: 2.3),
          ),
          Text(
            'I’m Rich',
            style: GoogleFonts.sofia(
                color: Color(0xffF14431),
                fontWeight: FontWeight.bold,
                fontSize: 48),
          ),
          Image.asset('assets/images/diamond_kurs_1.png'),
        ]),
      ),
    );
  }
}
