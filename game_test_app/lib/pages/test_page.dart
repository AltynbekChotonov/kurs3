import 'package:flutter/material.dart';
import 'package:game_test_app/constants/app_color.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.bgColor,
        centerTitle: true,
        title: Row(
          children: [
            Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.tips_and_updates),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: const Text('32'),
                    ),
                    Icon(Icons.add_circle),
                  ],
                ),
              ),
            )
          ],
        ),
        elevation: 0,
      ),
    );
  }
}
