import 'package:cloud_firestore/cloud_firestore.dart';

class Item {
  final String id;
  final String title;
  final dynamic price;
  final String photoUrl;
  final String category;
  final String type;

//<editor-fold desc="Data Methods">

  const Item({
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
      (other is Item &&
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

  Item copyWith({
    String? id,
    String? title,
    double? price,
    String? photoUrl,
    String? category,
    String? type,
  }) {
    return Item(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      photoUrl: photoUrl ?? this.photoUrl,
      category: category ?? this.category,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'title': this.title,
      'price': this.price,
      'photoUrl': this.photoUrl,
      'category': this.category,
      'type': this.type,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as String,
      title: map['title'] as String,
      price: map['price'] as dynamic,
      photoUrl: map['photoUrl'] as String,
      category: map['category'] as String,
      type: map['type'] as String,
    );
  }


//</editor-fold>
}