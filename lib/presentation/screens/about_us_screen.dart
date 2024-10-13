import 'package:fast_food_app/presentation/widgets/header_widget.dart';
import 'package:fast_food_app/utils/app_constants/app_colors.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderWidget(),
                  Gap(30.h),
                  Row(
                    children: [
                      Container(
                        width: 2.w,
                        height: 34.h,
                        decoration:
                            const BoxDecoration(color: AppColors.yellow),
                      ),
                      Text(
                        "BIZ HAQIMIZDA",
                        style: CustomFonts.inriaSans24,
                      ),
                    ],
                  ),
                  Gap(20.h),
                  Row(
                    children: [
                      Container(
                        width: 2.w,
                        height: 34.h,
                        decoration:
                            const BoxDecoration(color: AppColors.yellow),
                      ),
                      Text(
                        "WELL FOOD HAQIDA",
                        style: CustomFonts.inriaSans24,
                      ),
                    ],
                  ),
                  Gap(16.h),
                  Text(
                    "Bizning oshxona – bu salomatlik va mazalilik uyg‘unlashuvi. Har bir taomni sog‘lom mahsulotlardan tayyorlashni asosiy vazifa deb bilamiz. Mahsulotlarimiz yangi va ekologik toza bo‘lib, ularni sinchkovlik bilan tanlaymiz.\n\nBizda milliy va zamonaviy taomlar hamda vegetarianlar uchun ham maxsus menyu mavjud. Taomlarimizning tayyorlanishida yog‘ miqdorini minimum darajada saqlab, ko‘proq sabzavotlar va foydali tarkibiy qismlardan foydalanamiz.",
                    style: CustomFonts.inriaSans16grey,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
