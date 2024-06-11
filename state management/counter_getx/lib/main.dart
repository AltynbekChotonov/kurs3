import 'package:counter_getx/counter_getx/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppGetx());
}


/*
state management
1- керексиз ui ларды кайра-кайра курба
2- widget дарагына каалаган жерине датаны жеткирип берет
3- логика кодторду  ui кодтордон  болуп алат.

........................................................
Getx [MVC]---> model-view-controller
Mobx [MVVM]---> model-view-view-model (mobile)
Bloc [Bloc pattern]---> кийин отобуз
*/