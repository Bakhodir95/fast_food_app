import 'package:fast_food_app/presentation/screens/home/main_screen.dart';
import 'package:fast_food_app/presentation/widgets/pin_widegt.dart';
import 'package:fast_food_app/presentation/widgets/universal_button_widget.dart';
import 'package:fast_food_app/utils/app_size.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ConfirmationScreen extends StatelessWidget {
  ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).viewPadding.top,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    clipBehavior: Clip.hardEdge,
                    width: 160.w,
                    height: 60.h,
                    child: Image.asset(
                      "assets/images/header.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("SMS", style: CustomFonts.inriaSans24),
                      Text("Telefon raqamingizga kelgan SMS kodni kiriting",
                          style: CustomFonts.inriaSans14),
                      Gap(10),
                      const PinThemeWidget(),
                    ],
                  ),
                  UniversalButtonWidget(
                      function: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const MainScreen()));
                      },
                      color: null,
                      child: Text(
                        "Yuborish",
                        style: CustomFonts.inriaSans16,
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
