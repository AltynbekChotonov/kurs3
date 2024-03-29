import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/app.dart';

void main() {
  log('restart');
  // widgettteribiz orduna kelgenden kitin
  WidgetsFlutterBinding.ensureInitialized();

  // telefondum oriantashion bergenbiz
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitDown,
  ]);

  // run app
  runApp(const MyApp());
}
