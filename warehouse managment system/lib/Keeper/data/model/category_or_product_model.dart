import 'categories/inner_categories_model.dart';

class InnerOrProductModel {
  final bool massage;
  final List data;
  final int statusCode;

  InnerOrProductModel({
    required this.massage,
    required this.data,
    required this.statusCode,
  });

  factory InnerOrProductModel.fromJson(Map<String, dynamic> json) {
    return InnerOrProductModel(
      massage: json['massage'],
      data: List<InnerCategoriesModel>.from(
        json['data'].map((category) => InnerCategoriesModel.fromJson(category)),
      ),
      statusCode: json['status code'],
    );
  }
}