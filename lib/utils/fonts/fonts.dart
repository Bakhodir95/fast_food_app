import 'package:fast_food_app/utils/app_constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFonts {
  static TextStyle lato80024 = GoogleFonts.lato(
    fontSize: 24.sp,
    fontWeight: FontWeight.w800,
    color: AppColors.customBlack,
  );
  static TextStyle lato80022 = GoogleFonts.lato(
    fontSize: 22.sp,
    fontWeight: FontWeight.w800,
    color: AppColors.customBlack,
  );
  static TextStyle lato400 = GoogleFonts.lato(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.customheaderBlack);
  static TextStyle lexendDeca = GoogleFonts.lexendDeca(
      fontSize: 22.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.customLightBlack);
  static TextStyle lexend =
      GoogleFonts.lexend(fontSize: 18, fontWeight: FontWeight.w700);
  static TextStyle lexendTera = GoogleFonts.lexendTera(
      fontSize: 15.sp, fontWeight: FontWeight.w500, color: Colors.white);
}
