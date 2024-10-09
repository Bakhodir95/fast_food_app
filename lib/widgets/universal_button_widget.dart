import 'package:fast_food_app/utils/app_constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UniversalButtonWidget extends StatelessWidget {
  final VoidCallback function;
  final Widget child;
  final Color? color;

  const UniversalButtonWidget({
    super.key,
    required this.function,
    required this.child,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.green,
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
