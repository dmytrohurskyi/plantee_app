class StoreItem {
  final String id;
  final String title;
  final dynamic price;
  final String photoUrl;
  final String category;
  final String type;

  const StoreItem({
    required this.id,
    required this.title,
    required this.price,
    required this.photoUrl,
    required this.category,
    required this.type,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StoreItem &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          price == other.price &&
          photoUrl == other.photoUrl &&
          category == other.category &&
          type == other.type);

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      price.hashCode ^
      photoUrl.hashCode ^
      category.hashCode ^
      type.hashCode;

  @override
  String toString() {
    return 'Item{' +
        ' id: $id,' +
        ' title: $title,' +
        ' price: $price,' +
        ' photoUrl: $photoUrl,' +
        ' category: $category,' +
        ' type: $type,' +
        '}';
  }

  StoreItem copyWith({
    String? id,
    String? title,
    double? price,
    String? photoUrl,
    String? category,
    String? type,
  }) {
    return StoreItem(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      photoUrl: photoUrl ?? this.photoUrl,
      category: category ?? this.category,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'photoUrl': photoUrl,
      'category': category,
      'type': type,
    };
  }

  factory StoreItem.fromJson(Map<String, dynamic> json) {
    return StoreItem(
      id: json['id'] as String,
      title: json['title'] as String,
      price: json['price'] as dynamic,
      photoUrl: json['photoUrl'] as String,
      category: json['category'] as String,
      type: json['type'] as String,
    );
  }
}
