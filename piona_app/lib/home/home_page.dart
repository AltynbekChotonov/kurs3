import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            // child: Stack(children: [
            //   ListView.builder(
            //     itemCount: 12,
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: (context, index) {
            //       return PianoWhiteButton(Colors.white);
            //     },
            //   ),
            //   SizedBox(
            //     height: 200,
            //     child: ListView.builder(
            //       itemCount: 12,
            //       scrollDirection: Axis.horizontal,
            //       itemBuilder: (context, index) {
            //         return PianoBlackButton();
            //       },
            //     ),
            //   ),
            // ]),
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                      ],
                    ),
                    Positioned(
                      left: 40.0,
                      right: 0.0,
                      // bottom: 100,
                      top: 0.0,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PianoBlackButton(),
                          PianoBlackButton(),
                          PianoBlackButton(
                            visible: false,
                          ),
                          PianoBlackButton(),
                          PianoBlackButton(),
                          PianoBlackButton(),
                          PianoBlackButton(
                            visible: false,
                          ),
                          PianoBlackButton(),
                          PianoBlackButton(),
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
