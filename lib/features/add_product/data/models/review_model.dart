import 'package:fruit_hub_dashboard/features/add_product/domain/entities/add_review_entitiy.dart';

class ReviewModel {
  final String name;
  final String image;
  final num rating;
  final String date;
  final String reviewDescrption;

  ReviewModel(
      {required this.name,
      required this.image,
      required this.rating,
      required this.date,
      required this.reviewDescrption});



      factory ReviewModel.fromEntity(ReviewEntitiy reviewEntitiy) {
    return ReviewModel(
        name: reviewEntitiy.name,
        image: reviewEntitiy.image,
        rating: reviewEntitiy.rating,
        date: reviewEntitiy.date,
        reviewDescrption: reviewEntitiy.reviewDescrption);
  }


factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      name: json['name'],
      image: json['image'],
      rating: json['rating'],
      date: json['date'],
      reviewDescrption: json['reviewDescrption'],
    );

}
  toJson() {
    return {
      'name': name,
      'image': image,
      'rating': rating,
      'date': date,
      'reviewDescrption': reviewDescrption,
      
    };
  }
}
