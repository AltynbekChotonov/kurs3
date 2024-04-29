import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isfillSan = false;
  Duration duration = const Duration(seconds: 2);
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(((timeStamp) async {
      await Future<void>.delayed(duration);
    }));
    changeMode(0);
  }

  Future<void> changeMode(int maani) async {
    if (maani == 0) {
      setState(() {
        isfillSan = true;
      });
    } else {
      setState(() {
        isfillSan = false;
      });
    }
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
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isfillSan ? lightBgColors : darkBgColors),
      ),
      child: Stack(
        children: [
          AnimatedPositioned(
            bottom: isfillSan ? 500 : -150,
            left: 40,
            duration: duration,
            child: SvgPicture.asset('assets/sun.svg'),
          ),
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
          Container(
            width: width * 0.9,
            height: 55,
            margin: const EdgeInsets.fromLTRB(20, 130, 20, 0),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(10),
            ),
            child: DefaultTabController(
              length: 2,
              child: TabBar(
                  indicatorColor: Colors.transparent,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  labelStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w700),
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tabs: const [
                    Tab(text: 'Morning Login'),
                    Tab(text: 'Night Login'),
                  ],
                  onTap: (maani) async {
                    await changeMode(maani);
                  }),
            ),
          )
        ],
      ),
    ));
  }
}
