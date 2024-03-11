import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        title: const Text(
          'ТАПШЫРМА-03',
          style: TextStyle(
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
