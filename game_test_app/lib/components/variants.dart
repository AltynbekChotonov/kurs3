import 'package:flutter/material.dart';
import 'package:game_test_app/constants/app_color.dart';

class Variants extends StatelessWidget {
  const Variants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: GridView.builder(
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.5),
            itemBuilder: (context, i) {
              return Card(
                color: AppColors.inActive,
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Text(i.toString()),
                  ),
                ),
              );
            }));
  }
}
