import 'package:flutter/material.dart';
import 'package:login_page/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model.dart';

final students = <Student>[nursultan, gylzada, nazik, mursali, emir];
const snackBar = SnackBar(
  content: Text('kechiresiz login je phone kata'),
);

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isActive = false;
  String? _phone;
  String? _email;

  void _activate() {
    if (_phone != null && _email != null) {
      if (_phone!.isEmpty || _email!.isEmpty) {
        isActive = false;
      } else {
        isActive = true;
      }
    }
    setState(() {});
  }

  void controlEmailPhone(String phone, String email) {
    for (final student in students) {
      if (phone == student.phone && email == student.email) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
        break;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }

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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 50,
                    backgroundImage: AssetImage(
                      'assets/images/mobile-logo5.png',
                    ),
                  ),
                  const SizedBox(width: 30),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/icons/Kyrgyzstan-Flag.png',
                      width: 70,
                      height: 70,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                'Altynbek Chotonov',
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
                    // initialValue: '+996778578790',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 2, 131, 120),
                      fontSize: 20,
                    ),
                    onChanged: (String? phone) {
                      _phone = phone;

                      _activate();
                    },
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'phone number',
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
                    // initialValue: 'altynbek@gmail.com',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 2, 131, 120),
                      fontSize: 20,
                    ),
                    onChanged: (String? email) {
                      _email = email;
                      _activate();
                    },
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'email address',
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  side: const BorderSide(
                    width: 1.0,
                    color: Colors.white,
                    style: BorderStyle.solid,
                  ),
                ),
                onPressed: isActive
                    ? () {
                        if (_phone != null && _email != null) {
                          controlEmailPhone(_phone!, _email!);
                        }
                      }
                    : null,
                child: const Text(
                  'Sing In',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
