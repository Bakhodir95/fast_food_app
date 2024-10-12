import 'package:fast_food_app/presentation/screens/location_screen.dart';
import 'package:fast_food_app/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(412, 899),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LocationScreen(),
      ),
    );
  }
}
