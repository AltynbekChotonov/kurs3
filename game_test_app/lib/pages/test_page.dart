import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:game_test_app/components/test_page_app_bar_title.dart';
import 'package:game_test_app/components/test_slider.dart';
import 'package:game_test_app/components/variants.dart';
import 'package:game_test_app/constants/app_color.dart';
import 'package:game_test_app/model/suroo.dart';
import 'package:game_test_app/model/suroo.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key, required this.suroo});

  final List<Suroo> suroo;

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;
  int tuuraJooptor = 0;
  int kataJooptor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.bgColor,
        centerTitle: true,
        title: TestPageAppBarTitle(
          kataJooptor: kataJooptor,
          tuuraJooptor: tuuraJooptor,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          const TestSlider(),
          Center(
            child: Text(
              widget.suroo[index].text,
              style: TextStyle(fontSize: 33, height: 1.5),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                  'assets/images/capitals/${widget.suroo[index].image}.jpeg'),
            ),
          ),
          Variants(
              jooptor: widget.suroo[index].jooptor,
              onTap: (istrue) async {
                if (index + 1 == widget.suroo.length) {
                  await showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Cиздин тестиңиздин жыйынтыгы!'),
                      content: Text('туура:$tuuraJooptor  ката:$kataJooptor'),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('aртка'),
                          onPressed: () {
                            index = 0;
                            kataJooptor = 0;
                            tuuraJooptor = 0;
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                }
                if (istrue == true) {
                  tuuraJooptor++;
                } else {
                  kataJooptor++;
                }
                setState(() {
                  index++;
                });
              }),
        ],
      ),
    );
  }
}
