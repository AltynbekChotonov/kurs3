import 'package:flutter/material.dart';
import 'package:piona_app/components/piano_black_button.dart';
import 'package:piona_app/components/piano_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('My Piano App'),
      ),
      body: Column(
        children: [
          // Expanded(
          //   flex: 1,
          //   child: Center(
          //     child: Text('do,re,mi'),
          //   ),
          // ),
          Expanded(
            flex: 3,
          
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PianoWhiteButton('do'),
                        PianoWhiteButton('re'),
                        PianoWhiteButton('mi'),
                        PianoWhiteButton('fa'),
                        PianoWhiteButton('si'),
                        PianoWhiteButton('lya'),
                        PianoWhiteButton('do2'),
                        // PianoWhiteButton('fa'),
                        // PianoWhiteButton('si'),
                        // PianoWhiteButton('lya'),
                      ],
                    ),
                    Positioned(
                      left: 40.0,
                      right: 0.0,
                      top: 0.0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PianoBlackButton('do'),
                          PianoBlackButton('re'),
                          PianoBlackButton('mi'),
                          PianoBlackButton('fa', visible: false),
                          PianoBlackButton('lya'),
                          PianoBlackButton('si'),
                          // PianoBlackButton(
                          //   visible: false,
                          // ),
                          // PianoBlackButton(),
                          // PianoBlackButton(),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
