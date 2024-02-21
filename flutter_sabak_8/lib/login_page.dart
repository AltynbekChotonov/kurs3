import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff076650),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'LoginPage',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 40,
                backgroundImage: AssetImage(
                  '/images/mobile-logo5.png',
                ),
              ),
              const SizedBox(width: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  '/icons/Kyrgyzstan-Flag.png',
                  width: 70,
                  height: 70,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Text(
            'Altynbek Chotonov',
            //style: TextStyle(color: Colors.white, fontSize: 30),
            style: GoogleFonts.pacifico(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(height: 30),
          TextField()
        ],
      ),
    );
  }
}
