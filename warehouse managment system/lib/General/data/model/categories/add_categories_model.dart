class AddCategoriesModelGeneral {
  String? categoryName;
  String? parentId;

  int? id;

  AddCategoriesModelGeneral(
      {required this.categoryName,
         this.parentId,

        this.id});

  AddCategoriesModelGeneral.fromJson(Map<String, dynamic> json) {
    categoryName = json['category_name'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['category_name'] = categoryName;
    // ignore: cast_from_null_always_fails

    return data;
  }
}