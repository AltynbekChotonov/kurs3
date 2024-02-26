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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
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
            const SizedBox(height: 10),
            Text(
              'Altynbek Chotonov',
              //style: TextStyle(color: Colors.white, fontSize: 30),
              style: GoogleFonts.pacifico(color: Colors.white, fontSize: 30),
            ),
            Text(
              'Flutter DEVELOPER',
              style: GoogleFonts.rubik(
                  color: const Color.fromARGB(255, 144, 126, 126),
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
            ),
            const Divider(
              thickness: 2,
              height: 20,
              indent: 140,
              endIndent: 140,
              color: Color.fromARGB(66, 209, 206, 206),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  initialValue: '+996778578790',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 2, 131, 120),
                    fontSize: 20,
                  ),
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    isDense: true,
                    contentPadding: EdgeInsets.all(8),
                    prefixIcon: Icon(
                      Icons.phone,
                      size: 20,
                      color: Color.fromARGB(255, 2, 131, 120),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  initialValue: 'altynbek@gmail.com',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 2, 131, 120),
                    fontSize: 20,
                  ),
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    isDense: true,
                    contentPadding: EdgeInsets.all(8),
                    prefixIcon: Icon(
                      Icons.email,
                      size: 20,
                      color: Color.fromARGB(255, 2, 131, 120),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                side: const BorderSide(
                  width: 1.0,
                  color: Colors.white,
                  style: BorderStyle.solid,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Sing In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
