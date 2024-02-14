import 'package:flutter/material.dart';
import 'package:flutter_sabak_6/users.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.deepOrange),
      home: const UsersPage(),
    );
  }
}
