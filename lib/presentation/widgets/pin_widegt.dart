import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinThemeWidget extends StatelessWidget {
  const PinThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final pinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(fontSize: 20, color: Colors.black),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
    );

    return Center(
      child: Pinput(
        length: 5,
        defaultPinTheme: pinTheme,
        onCompleted: (pin) {
          print('Completed PIN: $pin');
        },
      ),
    );
  }
}
