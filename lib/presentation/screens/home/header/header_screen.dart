import 'package:fast_food_app/presentation/screens/aboutUs/about_us_screen.dart';
import 'package:fast_food_app/presentation/screens/location/branch_screen.dart';
import 'package:fast_food_app/presentation/screens/home/main_screen.dart';
import 'package:fast_food_app/presentation/screens/news/news_screen.dart';
import 'package:fast_food_app/presentation/screens/profile/profile_screen.dart';
import 'package:fast_food_app/utils/app_colors.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/material.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 149,
                  height: 67,
                  child: Image.asset("assets/images/header.png"),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 38,
                    ))
              ],
            ),
            ListTile(
                onTap: () => {
                      Navigator.pop(context),
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => MainScreen())),
                    },
                title: Text(
                  " - Asosiy",
                  style: CustomFonts.inriaSans24,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.mainGrey,
                )),
            ListTile(
                onTap: () => {
                      Navigator.pop(context),
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => ProfileScreen())),
                    },
                title: Text(
                  " - Profil",
                  style: CustomFonts.inriaSans24,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.mainGrey,
                )),
            ListTile(
                onTap: () => {
                      Navigator.pop(context),
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => BranchScreen())),
                    },
                title: Text(
                  " - Filillar",
                  style: CustomFonts.inriaSans24,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.mainGrey,
                )),
            ListTile(
                onTap: () => {
                      Navigator.pop(context),
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => AboutUsScreen())),
                    },
                title: Text(
                  " - Biz haqimizda",
                  style: CustomFonts.inriaSans24,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.mainGrey,
                )),
            ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                // tileColor: AppColors.white.withOpacity(0.9),
                onTap: () => {
                      Navigator.pop(context),
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => NewsScreen())),
                    },
                title: Text(
                  " - Yangiliklar",
                  style: CustomFonts.inriaSans24,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.mainGrey,
                )),
          ],
        ),
      )),
    );
  }
}
