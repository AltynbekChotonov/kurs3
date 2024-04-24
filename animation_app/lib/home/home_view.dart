import 'dart:async';

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isfillSan = false;
  Duration duration = const Duration(seconds: 3);
  @override
  void initState() {
    super.initState();
    changeMode();
  }

  Future<void> changeMode() async {
    await Future<void>.delayed(duration);
    setState(() {
      isfillSan = true;
    });
  }

  Widget build(BuildContext context) {
    List<Color> lightBgColors = [
      const Color(0xFF8C2480),
      const Color(0xFFCE587D),
      const Color(0xFFFF9485),
      if (isfillSan) const Color(0xFFFF9D80),
    ];
    var darkBgColors = const [
      Color(0xFF0D1441),
      Color(0xFF283584),
      Color(0xFF376AB2),
    ];
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: AnimatedContainer(
        duration: duration,
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: isfillSan ? lightBgColors : darkBgColors),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: -35,
              right: 0,
              left: 1,
              child: Image.asset(
                'assets/land_tree_light.png',
                height: height * 0.58,
                fit: BoxFit.fitHeight,
              ),
            ),
            A
          ],
        ),
      ),
    );
  }
}
