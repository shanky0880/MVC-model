// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'product_creation_model.freezed.dart';
part 'product_creation_model.g.dart';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

@freezed
abstract class Product with _$Product {
  factory Product({
    required int id,
    required String title,
    required String description,
    required String image,
    required double price,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
