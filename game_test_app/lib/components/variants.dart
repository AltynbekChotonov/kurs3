// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:game_test_app/constants/app_color.dart';
import 'package:game_test_app/model/suroo.dart';

class Variants extends StatelessWidget {
  const Variants({Key? key, required this.jooptor}) : super(key: key);

  final List<Joop> jooptor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: GridView.builder(
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.5),
            itemBuilder: (context, index) {
              return Card(
                color: AppColors.inActive,
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Text(jooptor[index].text),
                  ),
                ),
              );
            }));
  }
}
