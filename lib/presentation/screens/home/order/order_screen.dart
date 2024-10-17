import 'package:fast_food_app/data/models/cart_item.dart';
import 'package:fast_food_app/presentation/screens/home/order/delivery_screen.dart';
import 'package:fast_food_app/presentation/widgets/universal_button_widget.dart';
import 'package:fast_food_app/utils/app_colors.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OrderScreen extends StatefulWidget {
  final List<CartItem> cartItems;

  const OrderScreen({super.key, required this.cartItems});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  void _increment(CartItem item) {
    setState(() {
      item.quantity++;
    });
  }

  void _decrement(CartItem item) {
    if (item.quantity > 0) {
      setState(() {
        item.quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_rounded)),
            Text(
              'Buyurtma qilish',
              style: CustomFonts.inriaSans20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.cartItems.length,
                itemBuilder: (context, index) {
                  final data = widget.cartItems[index];
                  return ListTile(
                    leading: Image.asset(data.image),
                    title: Text(data.text),
                    subtitle: const Text("24000"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: const [
                              AppColors.boxshadow,
                            ],
                            borderRadius: BorderRadius.circular(13),
                            color: AppColors.white,
                          ),
                          width: 38,
                          height: 33,
                          child: IconButton(
                            onPressed: () => _decrement(data),
                            icon: const Icon(
                              Icons.remove,
                              size: 18,
                            ),
                          ),
                        ),
                        const Gap(21),
                        Text(
                          data.quantity.toString(),
                          style: const TextStyle(fontSize: 18),
                        ),
                        const Gap(21),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: const [
                              AppColors.boxshadow,
                            ],
                            borderRadius: BorderRadius.circular(13),
                            color: AppColors.white,
                          ),
                          width: 38,
                          height: 33,
                          child: IconButton(
                            onPressed: () => _increment(data),
                            icon: const Icon(
                              Icons.add,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "192 000 so’m",
                      style: CustomFonts.inriaSans12maingrey,
                    ),
                    Text(
                      "149 000 so’m",
                      style: CustomFonts.inriaSans18maingrey,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "",
                      style: CustomFonts.inriaSans12maingrey,
                    ),
                    Text(
                      "40 daqiqa",
                      style: CustomFonts.inriaSans18grey,
                    ),
                  ],
                ),
                UniversalButtonWidget(
                    height: 34.h,
                    width: 133.w,
                    borderColor: AppColors.containerBorderColor,
                    function: () {},
                    color: Colors.white,
                    child: Text(
                      "Hammasi",
                      style: CustomFonts.inriaSans14,
                    ))
              ],
            ),
            UniversalButtonWidget(
                function: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const DeliveryScreen()));
                },
                color: null,
                child: Text(
                  "Davom etish",
                  style: CustomFonts.inriaSans16,
                ))
          ],
        ),
      ),
    );
  }
}
