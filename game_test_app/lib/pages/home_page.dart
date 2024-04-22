import 'package:flutter/material.dart';

import 'package:game_test_app/components/continent_card.dart';
import 'package:game_test_app/constants/app_color.dart';
import 'package:game_test_app/constants/app_text.dart';
import 'package:game_test_app/model/continents.dart';
import 'package:game_test_app/pages/test_page.dart';

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
                padding: EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: continents.length,
                itemBuilder: (context, index) {
                  // final item = continents[index];
                  return ContinentCard(
                    cont: continents[index],
                    onTap: () {
                      if (continents[index].suroo != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                TestPage(suroo: continents[index].suroo!),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Бул континенттин суроосу жок')));
                      }
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
