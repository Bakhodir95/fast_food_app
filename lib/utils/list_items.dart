import 'package:fast_food_app/data/models/ads_item.dart';
import 'package:fast_food_app/data/models/cart_item.dart';

class ListItems {
  static final List<AdItem> adItems = [
    AdItem(
      imageUrl: 'assets/images/kfc.png',
      title: 'KFC endilikda arzonlashdi',
      description:
          'Endi 1 kilogram KFC’ni atigi 30 ming so\'mga harid qilishingiz mumkin!',
    ),
    AdItem(
      imageUrl: 'assets/images/kfc.png',
      title: 'KFC endilikda arzonlashdi',
      description:
          'Endi 2 kilogram KFC’ni atigi 60 ming so\'mga harid qilishingiz mumkin!',
    ),
    AdItem(
      imageUrl: 'assets/images/kfc.png',
      title: 'KFC endilikda arzonlashdi',
      description:
          'Endi 3 kilogram KFC’ni atigi 90 ming so\'mga harid qilishingiz mumkin!',
    ),
  ];

  static final List<CartItem> items = [
    CartItem(image: "assets/images/burger.png", text: "Burger"),
    CartItem(image: "assets/images/lavash.png", text: "Lavash"),
    CartItem(image: "assets/images/donar.png", text: "Donar"),
    CartItem(image: "assets/images/sendwich.png", text: "Sendwich"),
    CartItem(image: "assets/images/pitsa.png", text: "Pitsa"),
    CartItem(image: "assets/images/garnir.png", text: "Garnir"),
    CartItem(image: "assets/images/kombo.png", text: "Kombo"),
    CartItem(image: "assets/images/sous.png", text: "Sous"),
    CartItem(image: "assets/images/qoshimcha.png", text: "Qo'shimcha"),
    CartItem(image: "assets/images/ichimlik.png", text: "Ichimlik"),
    CartItem(image: "assets/images/salat.png", text: "Salat"),
  ];
}
