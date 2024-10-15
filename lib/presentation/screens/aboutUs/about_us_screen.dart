import 'package:fast_food_app/presentation/widgets/header_widget.dart';
import 'package:fast_food_app/presentation/widgets/sticktext_widget.dart';
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderWidget(),
                Gap(30.h),
                SticktextWidget(text: "BIZ HAQIMIZDA"),
                Gap(20.h),
                SticktextWidget(
                  text: "WELL FOOD HAQIDA",
                  fontSize: 18,
                ),
                Gap(16.h),
                Text(
                  "Bizning oshxona – bu salomatlik va mazalilik uyg‘unlashuvi. Har bir taomni sog‘lom mahsulotlardan tayyorlashni asosiy vazifa deb bilamiz. Mahsulotlarimiz yangi va ekologik toza bo‘lib, ularni sinchkovlik bilan tanlaymiz.\n\nBizda milliy va zamonaviy taomlar hamda vegetarianlar uchun ham maxsus menyu mavjud. Taomlarimizning tayyorlanishida yog‘ miqdorini minimum darajada saqlab, ko‘proq sabzavotlar va foydali tarkibiy qismlardan foydalanamiz.",
                  style: CustomFonts.inriaSans16grey,
                ),
                Gap(20),
                SticktextWidget(
                  text: "RAQAMLARDA",
                  fontSize: 18,
                ),
                Gap(5.h),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Ofis manzili: ',
                          style: CustomFonts.inriaSans16grey),
                      TextSpan(
                          text: 'Namangan shahar, Qayqubod MFY, Fayzli 77\n',
                          style: CustomFonts.inriaSans16400r),
                      TextSpan(
                          text: 'Ish vaqti: ',
                          style: CustomFonts.inriaSans16grey),
                      TextSpan(
                          text: '9:00 - 18:00\n',
                          style: CustomFonts.inriaSans16400r),
                      TextSpan(
                          text: 'Telefon raqami : ',
                          style: CustomFonts.inriaSans16grey),
                      TextSpan(
                          text: '+998 90 776-07-05\n',
                          style: CustomFonts.inriaSans16400r),
                      TextSpan(
                          text: 'Email: ', style: CustomFonts.inriaSans16grey),
                      TextSpan(
                          text: 'wellfood@gmail.com',
                          style: CustomFonts.inriaSans16400r),
                    ],
                  ),
                ),
                Gap(20.h),
                SticktextWidget(
                  text: "ASOSCHISI",
                  fontSize: 18,
                ),
                Gap(6),
                Text(
                  "KHATAMOV NURIDDIN tomonidan 2024-yil asos solingan",
                  style: CustomFonts.inriaSans20,
                ),
                Gap(30),
                SizedBox(
                  width: double.infinity,
                  height: 408.h,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/aboutusImage.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
