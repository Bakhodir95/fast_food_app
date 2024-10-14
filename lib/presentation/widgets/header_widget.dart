import 'package:fast_food_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            width: 74.w,
            height: 40.h,
            child: Image.asset("assets/images/header.png")),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: AppColors.cardColor,
                )),
            SvgPicture.asset(
              "assets/svgs/sortedicon.svg",
              width: 32.w,
              height: 32.h,
            )
          ],
        )
      ],
    );
  }
}
