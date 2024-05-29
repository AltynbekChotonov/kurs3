// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:wether_app/constats/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      iconSize: 50,
      color: AppColors.white,
      icon: Icon(icon),
    );
  }
}
