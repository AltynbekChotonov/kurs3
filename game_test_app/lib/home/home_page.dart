import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game_test_app/constants/app_color.dart';
import 'package:game_test_app/constants/app_text.dart';

List continents = <String>[
  'Africa',
  'Asia',
  'Australia',
  'Europe',
  'Nouth America',
  'South America'
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppText.gameTitle,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Divider(
            height: 2,
            color: Colors.black,
            indent: 30,
            endIndent: 30,
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Card(
                      child: Column(
                    children: [
                      Text(index.toString()),
                      Expanded(
                        child: SvgPicture.asset(
                            'assets/icons/continents/${continents[index]}.svg'),
                      )
                    ],
                  ));
                }),
          ),
        ],
      ),
    );
  }
}