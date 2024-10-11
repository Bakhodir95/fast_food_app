class CartItem {
  String text;
  String image;
  int quantity;

  CartItem({
    required this.image,
    required this.text,
    this.quantity = 1,
  });
}
