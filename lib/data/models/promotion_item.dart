class PromotionItem {
  final String imageUrl;
  final String title;
  final String description;
  final String date;

  PromotionItem({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.date,
  });

  factory PromotionItem.fromMap(Map<String, dynamic> map) {
    return PromotionItem(
      imageUrl: map['imageUrl'],
      title: map['title'],
      description: map['description'],
      date: map['date'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': imageUrl,
      'title': title,
      'description': description,
      'date': date,
    };
  }
}
