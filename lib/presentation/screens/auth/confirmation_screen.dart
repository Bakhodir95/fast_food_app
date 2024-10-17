import 'package:fast_food_app/cubits/auth_cubit.dart';
import 'package:fast_food_app/cubits/auth_state.dart';
import 'package:fast_food_app/presentation/widgets/universal_button_widget.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';

class ConfirmationScreen extends StatefulWidget {
  final String phoneNumber;
  const ConfirmationScreen({super.key, required this.phoneNumber});

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
                      Pinput(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        length: 6,
                        defaultPinTheme: PinTheme(
                          width: 56,
                          height: 68,
                          textStyle: const TextStyle(
                              fontSize: 20, color: Colors.black),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                          ),
                        ),
                        onCompleted: (pin) {
                          context.read<AuthCubit>().register({
                            "confirmation_code": pin,
                            "phone": widget.phoneNumber
                          });
                        },
                      )
                    ],
                  ),
                  UniversalButtonWidget(
                    function: () {
                      if (_smsCodeController.text.isNotEmpty) {
                        context.read<AuthCubit>().register({
                          "confirmation_code": _smsCodeController,
                          "phone": widget.phoneNumber
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please enter the SMS code'),
                          ),
                        );
                      }
                    },
                    color: null,
                    child: BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) {
                        if (state is LoadingState) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return Text(
                          "Yuborish",
                          style: CustomFonts.inriaSans16,
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
