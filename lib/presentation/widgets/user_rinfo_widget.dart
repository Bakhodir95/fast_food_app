import 'package:fast_food_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {
  final Size? size;
  final Color? color;
  final Color? borderColor;

  final Row? row;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;
  final BorderRadius? borderRadius;

  const UserInfoWidget({
    super.key,
    this.size,
    this.color,
    this.borderColor,
    this.row,
    this.margin,
    this.padding,
    this.alignment,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size?.height,
      width: size?.width,
      padding: padding ?? const EdgeInsets.all(8.0),
      alignment: alignment ?? Alignment.center,
      decoration: BoxDecoration(
        border:
            Border.all(color: borderColor ?? AppColors.containerBorderColor),
        borderRadius: borderRadius ?? BorderRadius.circular(8.0),
      ),
      child: row ?? const SizedBox.shrink(),
    );
  }
}
