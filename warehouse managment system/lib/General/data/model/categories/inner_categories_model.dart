class InnerCategoriesModelGeneral {
  final int id;
  final int parentId;
  final String categoryName;


  InnerCategoriesModelGeneral({
    required this.id,
    required this.parentId,
    required this.categoryName,

  });

  factory InnerCategoriesModelGeneral.fromJson(Map<String, dynamic> json) {
    return InnerCategoriesModelGeneral(
      id: json['id'],
      parentId: json['parent_id'],
      categoryName: json['category_name'],

    );
  }
}