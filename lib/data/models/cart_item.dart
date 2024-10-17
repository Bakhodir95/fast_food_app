class CartItem {
  String text;
  String image;
  int quantity;

  CartItem({
    required this.image,
    required this.text,
    this.quantity = 0,
  });

  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(image: map['image'], text: map['text']);
  }
}
