import 'package:fast_food_app/presentation/screens/about_us_screen.dart';
import 'package:fast_food_app/presentation/screens/main_screen.dart';
import 'package:fast_food_app/presentation/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 899),
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFFFFFFFF).withOpacity(0.9),
          ),
          debugShowCheckedModeBanner: false,
          home: RegisterScreen(),
        );
      },
    );
  }
}
