import 'package:flutter/material.dart';
import 'package:wether_app/constats/app_colors.dart';

class AppTextStyle {
  static const appBar = TextStyle(color: AppColors.black, fontSize: 30);

  static const body1 = TextStyle(
    color: AppColors.white,
    fontSize: 96,
  );

  static TextStyle body2(double size) => const TextStyle(
      color: AppColors.white, fontSize: 50, fontWeight: FontWeight.w300);
}
