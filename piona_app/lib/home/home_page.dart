import 'package:flutter/material.dart';
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
          const Expanded(
            flex: 1,
            child: Center(
              child: Text('do,re,mi'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Stack(children: [
              ListView.builder(
                  itemCount: 12,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return PianoWhiteButton();
                  }),
            ]),
          ),
        ],
      ),
    );
  }
}
