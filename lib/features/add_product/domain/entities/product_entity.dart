import 'dart:io';

import 'package:fruit_hub_dashboard/features/add_product/domain/entities/add_review_entitiy.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductInputEntity {
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
  final List<ReviewEntitiy> reviews;

  ProductInputEntity({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.code,
    required this.isFeature,
    required this.expireMonths,
    required this.numberOfCalories,
    required this.reviews,
    required this.unitAmount,
    this.isOrganic = false,
    this.imageUrl,
  });
}
