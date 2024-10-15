import 'package:fast_food_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class UniversalButtonWidget extends StatelessWidget {
  final VoidCallback function;
  final Widget child;
  final Color? color;
  final Color? borderColor;
  final double? height;
  final double? width;

  const UniversalButtonWidget({
    super.key,
    required this.function,
    this.borderColor,
    required this.child,
    required this.color,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      // height: height ?? 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: borderColor ?? Colors.transparent),
          backgroundColor: color ?? AppColors.mainButtonColor,
          foregroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: function,
        child: child,
      ),
    );
  }
}
