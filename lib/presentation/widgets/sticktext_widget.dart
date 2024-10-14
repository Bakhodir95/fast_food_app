import 'package:fast_food_app/utils/app_colors.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class SticktextWidget extends StatelessWidget {
  Color? color;
  TextStyle? style;
  String text;
  SticktextWidget({super.key, this.color, this.style, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 2.w,
          height: 34.h,
          decoration: BoxDecoration(color: color ?? AppColors.yellow),
        ),
        Text(
          text,
          style: CustomFonts.inriaSans24,
        ),
      ],
    );
  }
}
