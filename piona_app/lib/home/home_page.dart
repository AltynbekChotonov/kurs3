import 'package:flutter/material.dart';
import 'package:piona_app/components/piano_black_button.dart';
import 'package:piona_app/components/piano_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Drawer(): jan taraptan achylchu menu
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('My Piano App'),
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Center(
              child: Text('do re mi fa...'),
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: 2,
              // scrollDirection: Axis.horizontal: ListView.builder gorizontalnyi kurat
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                // Stack widgettterdi ustu ustuno kurat
                return const Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PianoWhiteButton('do'),
                        PianoWhiteButton('re'),
                        PianoWhiteButton('mi'),
                        PianoWhiteButton('fa'),
                        PianoWhiteButton('lya'),
                        PianoWhiteButton('si'),
                        PianoWhiteButton('do2'),
                      ],
                    ),
                    // Positioned: child widgetinin posissiasyn berebiz
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
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
