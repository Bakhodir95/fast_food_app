import 'package:fast_food_app/presentation/widgets/custom_textfield.dart';
import 'package:fast_food_app/presentation/widgets/location2_widget.dart';
import 'package:fast_food_app/presentation/widgets/universal_button_widget.dart';
import 'package:fast_food_app/presentation/widgets/user_rinfo_widget.dart';
import 'package:fast_food_app/utils/app_constants/app_colors.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_rounded)),
              Text(
                'Buyurtma qilish',
                style: CustomFonts.inriaSans20,
              ),
              SizedBox(height: 25.h),
              UserInfoWidget(
                row: Row(
                  children: [
                    const Icon(
                      Icons.person,
                      color: AppColors.mainGrey,
                      size: 14,
                    ),
                    Gap(3.w),
                    Text(
                      "Khatamov Nuriddin",
                      style: CustomFonts.inriaSans14,
                    )
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              UserInfoWidget(
                row: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.phone_fill,
                      color: AppColors.mainGrey,
                      size: 14,
                    ),
                    Gap(3.w),
                    Text(
                      "+998 90 776-07-05",
                      style: CustomFonts.inriaSans14,
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  Expanded(
                    child: UniversalButtonWidget(
                        function: () {},
                        color: null,
                        child: Text(
                          "Yetkazib berish",
                          style: CustomFonts.inriaSans14white,
                        )),
                  ),
                  SizedBox(height: 15.h),
                  Expanded(
                    child: UniversalButtonWidget(
                        function: () {},
                        color: AppColors.whiteWhite,
                        child: Text(
                          "Borib olish",
                          style: CustomFonts.inriaSans14,
                        )),
                  )
                ],
              ),
              SizedBox(height: 12.h),
              Location2Widget(),
              SizedBox(height: 15.h),
              Row(
                children: [
                  Expanded(
                    child: UniversalButtonWidget(
                        function: () {},
                        color: AppColors.textfieldBorder,
                        child: Text(
                          "NAQD PUL",
                          style: CustomFonts.inriaSans14,
                        )),
                  ),
                  SizedBox(width: 15.w),
                  Expanded(
                    child: UniversalButtonWidget(
                        function: () {},
                        color: AppColors.yellow,
                        child: Text(
                          "KARTA ORQALI",
                          style: CustomFonts.inriaSans14white,
                        )),
                  )
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Text('7777 7777 7777 7777  NURIDDIN H.',
                        style: TextStyle(
                            color: AppColors.mainGrey, fontSize: 12.sp)),
                  ),
                  Gap(65.w),
                  Expanded(
                    child: UniversalButtonWidget(
                        function: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(
                                  "Karta qo'shish",
                                  style: CustomFonts.inriaSans24,
                                ),
                                content: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const CustomTextfield(
                                        textInputType: TextInputType.number,
                                        hintText: "Karta raqami",
                                        hintStyle: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      const Gap(10),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: CustomTextfield(
                                              hintText: "Amal qilish muddati",
                                              hintStyle: TextStyle(
                                                  fontFamily: GoogleFonts
                                                      .inriaSans
                                                      .toString(),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                          const Expanded(
                                            child: CustomTextfield(
                                              textInputType:
                                                  TextInputType.number,
                                              hintText: "CVV",
                                              hintStyle: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      const CustomTextfield(
                                        textInputType: TextInputType.text,
                                        hintText: "Karta egasi ismi",
                                        hintStyle: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      Gap(35.h),
                                      UniversalButtonWidget(
                                          function: () {},
                                          color: null,
                                          child: Text(
                                            "Saqlash",
                                            style: CustomFonts.inriaSans16,
                                          ))
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        color: null,
                        child: Text(
                          "Karta qo’shish +",
                          style: CustomFonts.inriaSans14white,
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 290.h,
              ),
              UniversalButtonWidget(
                  function: () {},
                  color: null,
                  child: Text(
                    "Buyurtma berish",
                    style: CustomFonts.inriaSans16,
                  ))
            ],
          ),
        ),
      ),
    );
    ;
  }
}
