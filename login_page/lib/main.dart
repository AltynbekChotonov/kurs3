import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_page/app.dart';

void main() {
  debugPrint('restart');
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff751D85),
    //statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(const MyApp());
}
