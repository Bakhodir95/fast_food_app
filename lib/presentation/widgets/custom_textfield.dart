import 'package:fast_food_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfield extends StatelessWidget {
  final String? hintText;
  final int? maxlength;
  final String? labeltext;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? errorText;
  final TextStyle? hintStyle;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final double borderRadius; // Add this line

  const CustomTextfield({
    super.key,
    this.hintText,
    this.maxlength,
    this.labeltext,
    this.textInputAction,
    this.controller,
    this.validator,
    this.textInputType,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.errorText,
    this.onChanged,
    this.hintStyle,
    this.inputFormatters,
    this.borderRadius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      maxLength: maxlength,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: onChanged,
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      obscureText: obscureText,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        errorText: errorText,
        hintText: hintText,
        labelText: labeltext,
        hintStyle: const TextStyle(color: Colors.grey),
        border: _returnBorder(borderRadius),
        errorBorder: _returnBorder(borderRadius, Colors.red),
        focusedBorder: _returnBorder(borderRadius),
        enabledBorder: _returnBorder(borderRadius),
      ),
    );
  }
}

OutlineInputBorder _returnBorder(double radius, [Color? color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(radius),
    borderSide: BorderSide(color: color ?? AppColors.textfieldBorder),
  );
}
