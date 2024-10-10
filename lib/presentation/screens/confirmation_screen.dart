import 'package:fast_food_app/presentation/screens/main_screen.dart';
import 'package:fast_food_app/presentation/widgets/custom_textfield.dart';
import 'package:fast_food_app/presentation/widgets/universal_button_widget.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ConfirmationScreen extends StatelessWidget {
  ConfirmationScreen({super.key});

  final _formkey = GlobalKey<FormState>();

  final _number1Controller = TextEditingController();
  final _number2Controller = TextEditingController();
  final _number3Controller = TextEditingController();
  final _number4Controller = TextEditingController();
  final _number5Controller = TextEditingController();

  String? _validateFields(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    } else if (value.length != 1 || !RegExp(r'^[0-9]$').hasMatch(value)) {
      return 'Enter a valid digit';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formkey,
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
                        const Gap(9),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: CustomTextfield(
                                validator: _validateFields,
                                textInputAction: TextInputAction.next,
                                controller: _number1Controller,
                                textInputType: TextInputType.number,
                                maxlength: 1,
                              ),
                            ),
                            const Gap(15),
                            Expanded(
                              child: CustomTextfield(
                                validator: _validateFields,
                                textInputAction: TextInputAction.next,
                                controller: _number2Controller,
                                textInputType: TextInputType.number,
                                maxlength: 1,
                              ),
                            ),
                            const Gap(15),
                            Expanded(
                              child: CustomTextfield(
                                validator: _validateFields,
                                textInputAction: TextInputAction.next,
                                controller: _number3Controller,
                                textInputType: TextInputType.number,
                                maxlength: 1,
                              ),
                            ),
                            const Gap(15),
                            Expanded(
                              child: CustomTextfield(
                                validator: _validateFields,
                                textInputAction: TextInputAction.next,
                                controller: _number4Controller,
                                textInputType: TextInputType.number,
                                maxlength: 1,
                              ),
                            ),
                            const Gap(15),
                            Expanded(
                              child: CustomTextfield(
                                validator: _validateFields,
                                controller: _number5Controller,
                                textInputType: TextInputType.number,
                                maxlength: 1,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    UniversalButtonWidget(
                        function: () {
                          if (_formkey.currentState!.validate()) {
                            _formkey.currentState!.save();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => MainScreen()));
                          }
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
      ),
    );
  }
}
