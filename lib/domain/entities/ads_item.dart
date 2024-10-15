class AdItem {
  final String imageUrl;
  final String title;
  final String description;

  AdItem({
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  factory AdItem.fromMap(Map<String, dynamic> map) {
    return AdItem(
      imageUrl: map['imageUrl'],
      title: map['title'],
      description: map['description'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': imageUrl,
      'title': title,
      'description': description,
    };
  }
}
