import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  width: 160.w,
                  height: 67.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage("assets/images/header.png"),
                      fit: BoxFit.contain, // Ensures the image scales properly
                    ),
                  ),
                ),
                // Add other widgets here as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
