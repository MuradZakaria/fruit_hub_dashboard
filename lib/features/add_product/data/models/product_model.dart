import 'dart:io';

import 'package:fruit_hub_dashboard/features/add_product/data/models/review_model.dart';
import 'package:fruit_hub_dashboard/features/add_product/domain/entities/product_entity.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductInputModel {
  final String name;
  final String description;
  final String price;
  final File image;
  final String code;
  final bool isFeature;
  String? imageUrl;
  final int expireMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final int unitAmount;
  final num averageRating = 0;
   final List<ReviewModel> reviews;
final int sellingCount;//مش هعمله ف الانيتي عشان مش هيتعرض في اليو اي
  ProductInputModel( {
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.code,
    required this.isFeature,
    required this.expireMonths,
    required this.numberOfCalories,
    required this.unitAmount,
    required this.reviews,
     this.isOrganic=false,
    this.sellingCount=0,    this.imageUrl,
  });

  factory ProductInputModel.fromEntity(
      ProductInputEntity addProductInputEntity) {
    return ProductInputModel(
      name: addProductInputEntity.name,
      description: addProductInputEntity.description,
      price: addProductInputEntity.price,
      image: addProductInputEntity.image,
      code: addProductInputEntity.code,
      isFeature: addProductInputEntity.isFeature,
      imageUrl: addProductInputEntity.imageUrl,
      expireMonths: addProductInputEntity.expireMonths,
      numberOfCalories: addProductInputEntity.numberOfCalories,
      unitAmount: addProductInputEntity.unitAmount,
      isOrganic: addProductInputEntity.isOrganic,
    reviews: addProductInputEntity.reviews.map((e)=> ReviewModel.fromEntity(e)).toList(),
    );
  }

  toJson() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'code': code,
      'isFeature': isFeature,
      'imageUrl': imageUrl,
      'expireMonths': expireMonths,
      'numberOfCalories': numberOfCalories,
      'unitAmount': unitAmount,
      'isOrganic': isOrganic,
      'reviews': reviews.map((e) => e.toJson()).toList(),
      'sellingCount': sellingCount
    };
  }
}
