class InnerCategoriesModel {
  final int id;
  final int parentId;
  final String categoryName;


  InnerCategoriesModel({
    required this.id,
    required this.parentId,
    required this.categoryName,

  });

  factory InnerCategoriesModel.fromJson(Map<String, dynamic> json) {
    return InnerCategoriesModel(
      id: json['id'],
      parentId: json['parent_id'],
      categoryName: json['category_name'],

    );
  }
}