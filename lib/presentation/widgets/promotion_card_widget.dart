import 'package:fast_food_app/data/models/promotion_item.dart';
import 'package:fast_food_app/utils/app_colors.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/material.dart';

class PromotionCard extends StatelessWidget {
  final PromotionItem promotion;

  const PromotionCard({
    super.key,
    required this.promotion,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white.withOpacity(0.9),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              promotion.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(promotion.title, style: CustomFonts.inriaSans24700),
                const SizedBox(height: 8),
                Text(promotion.description, style: CustomFonts.inriaSans14),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(promotion.date, style: CustomFonts.inriaSans14),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
