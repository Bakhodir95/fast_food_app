import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class CartItem extends Equatable {
  String text;
  String image;
  int quantity;

  CartItem({
    required this.image,
    required this.text,
    this.quantity = 1,
  });

  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(image: map['image'], text: map['text']);
  }

  @override
  List<Object?> get props => [
        text,
        image,
      ];
}
