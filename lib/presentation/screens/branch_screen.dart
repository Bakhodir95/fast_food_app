import 'dart:async';

import 'package:fast_food_app/presentation/widgets/header_widget.dart';
import 'package:fast_food_app/presentation/widgets/branch_container_widget.dart';
import 'package:fast_food_app/utils/app_constants/app_colors.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BranchScreen extends StatefulWidget {
  const BranchScreen({super.key});

  @override
  State<BranchScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<BranchScreen> {
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
                      Padding(
                        padding: const EdgeInsets.only(left: 12, right: 2),
                        child: Container(
                          width: 2.w,
                          height: 34.h,
                          decoration:
                              const BoxDecoration(color: AppColors.yellow),
                        ),
                      ),
                      Text(
                        "FILIALLAR",
                        style: CustomFonts.inriaSans24,
                      ),
                    ],
                  ),
                  Gap(16.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LocationContainerWidget(),
                      LocationContainerWidget(),
                      LocationContainerWidget(),
                      LocationContainerWidget(),
                      LocationContainerWidget()
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
