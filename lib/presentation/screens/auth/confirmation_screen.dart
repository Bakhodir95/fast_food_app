import 'package:fast_food_app/cubits/auth_cubit.dart';
import 'package:fast_food_app/cubits/auth_state.dart';
import 'package:fast_food_app/data/models/auth_request/auth_request.dart';
import 'package:fast_food_app/presentation/screens/home/main_screen.dart';
import 'package:fast_food_app/presentation/widgets/pin_widegt.dart';
import 'package:fast_food_app/presentation/widgets/universal_button_widget.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({super.key});

  @override
  _ConfirmationScreenState createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  final _smsCodeController = TextEditingController();

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
                      const Gap(10),
                      PinThemeWidget(
                        controller: _smsCodeController,
                      ),
                    ],
                  ),
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is SmsCodeSentState) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const MainScreen()));
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
                          if (_smsCodeController.text.isNotEmpty) {
                            context.read<AuthCubit>().register(
                                AuthRequest(phone: _smsCodeController.text));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Please enter the SMS code'),
                              ),
                            );
                          }
                        },
                        color: null,
                        child: Text(
                          "Yuborish",
                          style: CustomFonts.inriaSans16,
                        ),
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
