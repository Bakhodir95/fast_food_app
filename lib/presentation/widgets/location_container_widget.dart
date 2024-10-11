import 'package:fast_food_app/utils/app_constants/app_colors.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LocationContainerWidget extends StatelessWidget {
  const LocationContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Ink(
          width: double.infinity,
          height: 253.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/yandexmap.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 14.h, horizontal: 15.5.w),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Row(
                      children: [
                        Container(
                          width: 1.w,
                          height: 25.h,
                          decoration: const BoxDecoration(
                              color: AppColors.mainButtonColor),
                        ),
                        const Gap(2),
                        Text(
                          "Namangan shahar",
                          style: CustomFonts.inriaSans18maingrey,
                        ),
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          size: 14.sp,
                          color: AppColors.mainGrey,
                        ),
                        Gap(3.w),
                        Text(
                          "09:00 - 03:00",
                          style: CustomFonts.inriaSans14,
                        ),
                      ],
                    ),
                    trailing: InkWell(
                      onTap: () {},
                      child: Ink(
                        width: 39.w,
                        height: 39.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: AppColors.mainButtonColor,
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: AppColors.white,
                          size: 15.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Gap(30.h),
      ],
    );
  }
}
