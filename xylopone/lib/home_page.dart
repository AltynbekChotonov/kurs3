import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Xylophone_App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          MyCard(color: const Color(0xffEF443A), notyi: 'do'),
          MyCard(color: const Color(0xffF99700), notyi: 're'),
          MyCard(color: const Color(0xffFFE93B), notyi: 'mi'),
          MyCard(color: const Color(0xff4CB050), notyi: 'fa'),
          MyCard(color: const Color(0xff2E968C), notyi: 'sol'),
          MyCard(color: const Color(0xff2996F5), notyi: 'lya'),
          MyCard(color: const Color(0xff9B28B1), notyi: 'si'),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({
    Key? key,
    required this.color,
    required this.notyi,
  }) : super(key: key);

  final Color color;
  final String notyi;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () async {
          await AudioPlayer().play(AssetSource('/zvuk-notyi-$notyi.wav'));
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
