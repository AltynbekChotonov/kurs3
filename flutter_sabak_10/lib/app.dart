import 'package:flutter/material.dart';
import 'package:flutter_sabak_10/expanded.dart';
import 'package:flutter_sabak_10/home_page.dart';
import 'package:flutter_sabak_10/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
