import 'package:fast_food_app/presentation/screens/confirmation_screen.dart';
import 'package:fast_food_app/presentation/widgets/custom_textfield.dart';
import 'package:fast_food_app/presentation/widgets/universal_button_widget.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final _formkey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();

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
                    SizedBox(
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
                        Text("Ma’lumotlaringizni kiriting",
                            style: CustomFonts.inriaSans24),
                        Text(
                            "Qulayligingiz uchun ma’lumotlaringizni saqlab qo’yamiz",
                            style: CustomFonts.inriaSans14),
                        const Gap(15),
                        Text("Telefon raqamingizni kiriting:",
                            style: CustomFonts.inriaSans10),
                        SizedBox(
                          height: 2,
                        ),
                        CustomTextfield(
                          inputFormatters: [
                            MaskedInputFormatter("+998 (##) ###-##-##"),
                          ],
                          controller: _phoneController,
                          prefixIcon: const Icon(CupertinoIcons.phone_fill),
                          textInputType: TextInputType.phone,
                          hintText: "Telefon raqamingiz...",
                          hintStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Ma'lumot bo'sh bo'lmasligi kerak";
                            }
                            return null;
                          },
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
                                    builder: (ctx) => ConfirmationScreen()));
                          }
                          return;
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
