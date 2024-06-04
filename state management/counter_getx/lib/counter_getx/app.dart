import 'package:counter_getx/counter_getx/counter_page_getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppGetx extends StatelessWidget {
  const MyAppGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      home: CounterGetxPage(),
    );
  }
}
