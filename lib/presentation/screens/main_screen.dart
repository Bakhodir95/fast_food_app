import 'package:fast_food_app/presentation/widgets/universal_button_widget.dart';
import 'package:fast_food_app/utils/app_constants/app_colors.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:svg_flutter/svg.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Map<String, dynamic>> menu = [
    {
      "image": "assets/images/burger.png",
      "text": "Burger",
    },
    {
      "image": "assets/images/lavash.png",
      "text": "Lavash",
    },
    {
      "image": "assets/images/donar.png",
      "text": "Donar",
    },
    {
      "image": "assets/images/sendwich.png",
      "text": "Sendwich",
    },
    {
      "image": "assets/images/pitsa.png",
      "text": "Pitsa",
    },
    {
      "image": "assets/images/garnir.png",
      "text": "Garnir",
    },
    {
      "image": "assets/images/kombo.png",
      "text": "Kombo",
    },
    {
      "image": "assets/images/sous.png",
      "text": "Sous",
    },
    {
      "image": "assets/images/qoshimcha.png",
      "text": "Qo'shimcha",
    },
    {
      "image": "assets/images/ichimlik.png",
      "text": "Ichimlik",
    },
    {
      "image": "assets/images/salat.png",
      "text": "Salat",
    },
  ];

  int _selectedIndex = 0;
  bool isSelection = false;
  int itemCount = 0;
  int famousItemCount = 0;

  void _increment() {
    setState(() {
      itemCount++;
    });
  }

  void _decrement() {
    setState(() {
      itemCount--;
    });
  }

  void _incrementF() {
    setState(() {
      famousItemCount++;
    });
  }

  void _decrementF() {
    setState(() {
      famousItemCount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 74.w,
                          height: 40.h,
                          child: Image.asset("assets/images/header.png")),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.shopping_cart_outlined,
                                color: AppColors.cardColor,
                              )),
                          SvgPicture.asset(
                            "assets/svgs/sortedicon.svg",
                            width: 32.w,
                            height: 32.h,
                          )
                        ],
                      )
                    ],
                  ),
                  Gap(9.h),
                  Stack(
                    children: [
                      Container(
                        width: 382.w,
                        height: 187.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/kfc.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 15),
                        width: 382.w,
                        height: 187.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(217, 217, 217, 0),
                              Color.fromRGBO(38, 38, 38, 0.67),
                              Color.fromRGBO(35, 35, 35, 0.76),
                            ],
                            stops: [0.0, 0.595, 0.98],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "KFC endilikda arzonlashti",
                              style: CustomFonts.inriaSans18w700,
                            ),
                            Text(
                              "Endi 1 kilogram KFC’ni atigi 30 ming so’mga harid qilishingiz mumkin!",
                              style: CustomFonts.inriaSans14white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset("assets/svgs/pagination.svg"),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 3.5,
                    ),
                    itemCount: menu.length,
                    itemBuilder: (context, index) {
                      bool isSelected = _selectedIndex == index;

                      return InkWell(
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                        child: Ink(
                          width: 183.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.mainButtonColor
                                : AppColors.whiteWhite,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: 40.w,
                                  height: 40.h,
                                  child: Image.asset(menu[index]['image'])),
                              const Gap(8),
                              Text(
                                menu[index]["text"],
                                style: isSelected
                                    ? CustomFonts.inriaSans14white
                                    : CustomFonts.inriaSans14,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const Gap(29.7),
                  Row(
                    children: [
                      SizedBox(
                        width: 34.w,
                        height: 34.h,
                        child: Image.asset(menu[_selectedIndex]['image']),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12, right: 2),
                        child: Container(
                          width: 2.w,
                          height: 34.h,
                          decoration: BoxDecoration(color: AppColors.yellow),
                        ),
                      ),
                      Text(
                        menu[_selectedIndex]['text'],
                        style: CustomFonts.inriaSans20,
                      )
                    ],
                  ),
                  const Gap(20),
                  Container(
                    width: double.infinity,
                    height: 276,
                    decoration: BoxDecoration(
                        color: AppColors.whiteWhite,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 130.w,
                            height: 106.h,
                            child: Image.asset(
                                "assets/images/selectedburger.png")),
                        Gap(12.h),
                        Text(
                          "Burger",
                          style: CustomFonts.inriaSans28,
                        ),
                        Text(
                          "24 000 so’m",
                          style: CustomFonts.inriaSans18grey,
                        ),
                        Gap(21.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 23),
                          child: UniversalButtonWidget(
                              function: () {},
                              color: null,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Savatga qo’shish"),
                                  const Gap(8),
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    color: AppColors.white,
                                    size: 13.sp,
                                  )
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                  Gap(20.h),
                  Container(
                    width: double.infinity,
                    height: 276,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.whiteWhite),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 130.w,
                            height: 106.h,
                            child: Image.asset(
                                "assets/images/selectedburger.png")),
                        const Gap(12),
                        Text(
                          "Burger",
                          style: CustomFonts.inriaSans28,
                        ),
                        Text(
                          "24 000 so’m",
                          style: CustomFonts.inriaSans18grey,
                        ),
                        const Gap(21),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: _decrement,
                                icon: const Icon(
                                  Icons.remove,
                                  size: 18,
                                )),
                            const Gap(21),
                            Text(
                              itemCount.toString(),
                              style: const TextStyle(fontSize: 18),
                            ),
                            const Gap(21),
                            IconButton(
                                onPressed: _increment,
                                icon: const Icon(
                                  Icons.add,
                                  size: 18,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  Gap(45.h),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          width: 2.w,
                          height: 34.h,
                          decoration:
                              const BoxDecoration(color: AppColors.yellow),
                        ),
                      ),
                      Text(
                        "Ommabop",
                        style: CustomFonts.inriaSans20,
                      )
                    ],
                  ),
                  Gap(10.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 138.w,
                        height: 184.h,
                        child: Image.asset("assets/images/chizburger.png"),
                      ),
                      Gap(10.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chizburger",
                              style: CustomFonts.inriaSans24,
                            ),
                            Gap(5.h),
                            Text(
                              "Mol go'shti kotleti, pomidor, aysberg, pishloq, tuzlangan bodring, piyoz, xantal, ketchup, mayonez",
                              style: CustomFonts.inriaSans10,
                            ),
                            const Gap(44),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: _decrementF,
                                    icon: const Icon(
                                      Icons.remove,
                                      size: 18,
                                    )),
                                const Gap(21),
                                Text(
                                  famousItemCount.toString(),
                                  style: const TextStyle(fontSize: 18),
                                ),
                                Gap(21.h),
                                IconButton(
                                    onPressed: _incrementF,
                                    icon: const Icon(
                                      Icons.add,
                                      size: 18,
                                    )),
                              ],
                            ),
                            Gap(15.h)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 138.w,
                        height: 184.h,
                        child: Image.asset("assets/images/chizburger.png"),
                      ),
                      Gap(12.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chizburger",
                              style: CustomFonts.inriaSans24,
                            ),
                            Gap(5.h),
                            Text(
                              "Mol go'shti kotleti, pomidor, aysberg, pishloq, tuzlangan bodring, piyoz, xantal, ketchup, mayonez",
                              style: CustomFonts.inriaSans10,
                            ),
                            Gap(25.h),
                            SizedBox(
                              width: double.infinity,
                              height: 28.h,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.mainButtonColor,
                                    foregroundColor: AppColors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Savatga qo’shish",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const Gap(8),
                                      Icon(
                                        Icons.shopping_cart_outlined,
                                        color: AppColors.white,
                                        size: 13.sp,
                                      )
                                    ],
                                  )),
                            ),
                            Gap(15.h)
                          ],
                        ),
                      ),
                    ],
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
