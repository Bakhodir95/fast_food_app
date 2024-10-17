class OrderHistory {
  final String date;
  final String itemName;
  final String imageUrl;
  final int quantity;
  final double price;
  final String status;

  OrderHistory({
    required this.date,
    required this.itemName,
    required this.imageUrl,
    required this.quantity,
    required this.price,
    required this.status,
  });

  factory OrderHistory.fromMap(Map<String, dynamic> map) {
    return OrderHistory(
      date: map['date'],
      itemName: map['itemName'],
      imageUrl: map['imageUrl'],
      quantity: map['quantity'],
      price: map['price'],
      status: map['status'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'itemName': itemName,
      'imageUrl': imageUrl,
      'quantity': quantity,
      'price': price,
      'status': status,
    };
  }
}
