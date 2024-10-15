import 'package:fast_food_app/domain/entities/promotion_item.dart';
import 'package:fast_food_app/presentation/widgets/header_widget.dart';
import 'package:fast_food_app/presentation/widgets/promotion_card_widget.dart';
import 'package:fast_food_app/presentation/widgets/sticktext_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

final List<Map<String, dynamic>> promotionData = [
  {
    'imageUrl': 'assets/images/promotion.png',
    'title': 'KFC endilikda arzonlashdi',
    'description':
        'Endi 1 kilogram KFC\'ni atigi 30 ming so\'mga harid qilishingiz mumkin!',
    'date': '06.10.2024',
  },
  {
    'imageUrl': 'assets/images/promotion.png',
    'title': 'Chegirma KFC\'da',
    'description': 'KFC mahsulotlariga 20% chegirma!',
    'date': '07.10.2024',
  },
  {
    'imageUrl': 'assets/images/promotion.png',
    'title': 'Chegirma KFC\'da',
    'description': 'KFC mahsulotlariga 20% chegirma!',
    'date': '07.10.2024',
  },
];

final List<PromotionItem> promotions =
    promotionData.map((data) => PromotionItem.fromMap(data)).toList();

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(),
              Gap(29),
              SticktextWidget(text: "YANGILIKLAR"),
              Gap(20),
              Expanded(
                child: ListView.builder(
                  itemCount: promotions.length,
                  itemBuilder: (context, index) {
                    return PromotionCard(promotion: promotions[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
