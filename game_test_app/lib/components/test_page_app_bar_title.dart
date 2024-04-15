import 'package:flutter/material.dart';
import 'package:game_test_app/constants/app_color.dart';

class TestPageAppBarTitle extends StatelessWidget {
  const TestPageAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Row(
              children: [
                Icon(
                  Icons.tips_and_updates,
                  color: AppColors.yellow,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: const Text(
                    '32',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Icon(
                  Icons.add_circle,
                  color: AppColors.green,
                ),
              ],
            ),
          ),
        ),
        Text('3'),
        Row(
          children: [
            SizedBox(
              width: 70,
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Icon(Icons.favorite, color: AppColors.red);
                },
              ),
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ],
        ),
      ],
    );
  }
}
