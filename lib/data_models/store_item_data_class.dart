import 'package:equatable/equatable.dart';

class StoreItem extends Equatable {
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

  @override
  List<Object?> get props => [id, title, price, photoUrl, category, type];

  @override
  bool get stringify => true;
}
