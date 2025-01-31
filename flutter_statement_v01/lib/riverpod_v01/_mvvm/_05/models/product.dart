import 'package:flutter_riverpod/flutter_riverpod.dart';

class Product {
  final bool isAvaliable;
  final String name;
  final int stock;
  Product({required this.name, this.isAvaliable = false, this.stock = 0});

  //copyWith 메서드를 추가하기
  Product copyWith({bool? isAvaliable, String? name, int? stock}) {
    return Product(
      isAvaliable: isAvaliable ?? this.isAvaliable,
      name: name ?? this.name,
      stock: stock ?? this.stock,
    );
  }
}
