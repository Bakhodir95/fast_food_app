import 'package:fast_food_app/utils/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class Underline extends StatefulWidget {
  const Underline({super.key});

  @override
  State<Underline> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Underline> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 0.5,
      color: AppColors.whiteGreen2,
    );
  }
}
