import 'package:fast_food_app/data/models/order_history.dart';
import 'package:fast_food_app/presentation/widgets/custom_textfield.dart';
import 'package:fast_food_app/presentation/widgets/header_widget.dart';
import 'package:fast_food_app/presentation/widgets/sticktext_widget.dart';
import 'package:fast_food_app/presentation/widgets/universal_button_widget.dart';
import 'package:fast_food_app/utils/app_colors.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formkey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _nameController = TextEditingController();
  final List<OrderHistory> orderHistoryList = [
    OrderHistory(
      date: '16.10.2024',
      itemName: 'Chizburger',
      imageUrl: 'assets/images/burger.png',
      quantity: 1,
      price: 24000,
      status: "Yo'lda",
    ),
    OrderHistory(
      date: '15.10.2024',
      itemName: 'Pizza',
      imageUrl: 'assets/images/burger.png',
      quantity: 2,
      price: 48000,
      status: "Yo'lda",
    ),
    OrderHistory(
      date: '15.10.2024',
      itemName: 'Pizza',
      imageUrl: 'assets/images/burger.png',
      quantity: 2,
      price: 48000,
      status: "Yo'lda",
    ),
    OrderHistory(
      date: '15.10.2024',
      itemName: 'Pizza',
      imageUrl: 'assets/images/burger.png',
      quantity: 2,
      price: 48000,
      status: "Yo'lda",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderWidget(),
                  Gap(30.h),
                  const SticktextWidget(text: "KHATAMOV NURIDDIN"),
                  Gap(20.h),
                  const SticktextWidget(
                    text: "MA’LUMOTLAR",
                    fontSize: 18,
                  ),
                  Gap(10.h),
                  Text("Ismingizni kiriting:", style: CustomFonts.inriaSans10),
                  CustomTextfield(
                    controller: _nameController,
                    prefixIcon: const Icon(CupertinoIcons.person_solid),
                    textInputType: TextInputType.text,
                    hintText: "Ismingiz...",
                    hintStyle: CustomFonts.inriaSans14,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Ma'lumot bo'sh bo'lmasligi kerak";
                      }
                      return null;
                    },
                  ),
                  Gap(12.h),
                  Text("Telefon raqamingizni kiriting:",
                      style: CustomFonts.inriaSans10),
                  const SizedBox(
                    height: 2,
                  ),
                  CustomTextfield(
                    inputFormatters: [
                      MaskedInputFormatter("+### (##) ###-##-##"),
                    ],
                    controller: _phoneController,
                    prefixIcon: const Icon(CupertinoIcons.phone_fill),
                    textInputType: TextInputType.phone,
                    hintText: "Telefon raqamingiz...",
                    hintStyle: CustomFonts.inriaSans14,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Ma'lumot bo'sh bo'lmasligi kerak";
                      }
                      return null;
                    },
                  ),
                  Gap(20.h),
                  UniversalButtonWidget(
                      function: () {},
                      color: AppColors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.place_outlined,
                            color: AppColors.mainGrey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "ETAMIN IT SOLUTIONS",
                            style: CustomFonts.inriaSans14,
                          )
                        ],
                      )),
                  const Gap(20),
                  UniversalButtonWidget(
                      function: () {},
                      color: null,
                      child: Text(
                        "Ma’lumotlarni saqlash",
                        style: CustomFonts.inriaSans14white,
                      )),
                  Gap(52.h),
                  const SticktextWidget(
                    text: "BUYURTMALAR TARIXI",
                    fontSize: 20,
                  ),
                  Gap(14.h),
                  Row(
                    children: [
                      Expanded(
                        child: UniversalButtonWidget(
                            width: 162,
                            function: () {},
                            color: null,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "Aktiv buyurtmalar",
                                style: CustomFonts.inriaSans14white,
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                      Gap(15.h),
                      Expanded(
                        child: UniversalButtonWidget(
                            height: 30,
                            width: 162,
                            borderColor: AppColors.containerBorderColor,
                            function: () {},
                            color: Colors.white,
                            child: Text(
                              "Hammasi",
                              style: CustomFonts.inriaSans14,
                            )),
                      ),
                      SizedBox(
                        width: 43.w,
                      )
                    ],
                  ),
                  Gap(8.h),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: orderHistoryList.length,
                    itemBuilder: (context, index) {
                      final order = orderHistoryList[index];
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(order.date, style: CustomFonts.inriaSans16300),
                          Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: const BoxDecoration(),
                            child: Image.asset(
                              order.imageUrl,
                              width: 40,
                              height: 29,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(order.itemName,
                                    style: CustomFonts.inriaSans20),
                                Text("${order.price.toString()} so'm",
                                    style: CustomFonts.inriaSans12grey),
                              ],
                            ),
                          ),
                          Text("${order.quantity} dona",
                              style: CustomFonts.inriaSans16grey),
                          const SizedBox(width: 10),
                          Text(
                            order.status,
                            style: TextStyle(
                              color: order.status == "Yo'lda"
                                  ? AppColors.whitegreen
                                  : Colors.grey,
                            ),
                          ),
                        ],
                      );
                    },
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
