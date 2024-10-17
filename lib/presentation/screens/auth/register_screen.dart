import 'package:fast_food_app/cubits/auth_cubit.dart';
import 'package:fast_food_app/cubits/auth_state.dart';
import 'package:fast_food_app/presentation/screens/auth/confirmation_screen.dart';
import 'package:fast_food_app/presentation/widgets/custom_textfield.dart';
import 'package:fast_food_app/presentation/widgets/universal_button_widget.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                          hintStyle: const TextStyle(
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
                    BlocConsumer<AuthCubit, AuthState>(
                      listener: (context, state) {
                        if (state is SmsCodeSentState) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const ConfirmationScreen()),
                          );
                        } else if (state is ErrorState) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(state.error),
                            ),
                          );
                        }
                      },
                      builder: (context, state) {
                        if (state is LoadingState) {
                          return const CircularProgressIndicator();
                        }
                        return UniversalButtonWidget(
                            function: () {
                              if (_formkey.currentState!.validate()) {
                                _formkey.currentState!.save();
                                context
                                    .read<AuthCubit>()
                                    .sendPhoneNumber(_phoneController.text);
                              }
                              return;
                            },
                            color: null,
                            child: Text(
                              "Yuborish",
                              style: CustomFonts.inriaSans16,
                            ));
                      },
                    ),
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
