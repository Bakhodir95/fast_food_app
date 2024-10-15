import 'package:fast_food_app/utils/app_colors.dart';
import 'package:fast_food_app/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SticktextWidget extends StatelessWidget {
  final Color? color;
  final TextStyle? style;
  final String text;
  final double? width;
  final double? height;
  final double? fontSize;
  final FontWeight? fontWeight;

  SticktextWidget({
    super.key,
    this.color,
    this.style,
    required this.text,
    this.width,
    this.height,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width ?? 2.w,
          height: height ?? 34.h,
          decoration: BoxDecoration(color: color ?? AppColors.mainButtonColor),
        ),
        SizedBox(width: 5.w),
        Text(
          text,
          style: style ??
              TextStyle(
                  fontSize: fontSize ?? 24.sp,
                  fontFamily: AppTextStyle.inriaSansBold.toString(),
                  fontWeight: fontWeight ?? FontWeight.w300,
                  color: AppColors.mainGrey),
        ),
      ],
    );
  }
}
