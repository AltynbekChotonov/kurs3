import 'package:flutter/material.dart';
import 'package:flutter_sabak_7/home_page.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  String login = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LoginTest'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (log) {
                login = log;
                print(login);
                print(password);
              },
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.account_circle),
                border: OutlineInputBorder(),
                hintText: 'Login',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (pas) {
                password = pas;
                print(login);
                print(password);
              },
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(),
                hintText: 'password',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (login == 'Kours3@gmail.com' && password == 'kours123') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  duration: const Duration(seconds: 5),
                  content: Text(
                      'Логининиз же парольунуз туура эмес! Сураныч кайрадан жазыныз.'),
                ));
              }
            },
            child: const Text('Кирүү'),
          ),
        ],
      ),
    );
  }
}
