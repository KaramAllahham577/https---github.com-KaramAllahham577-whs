class AddCategoriesModel {
  String? categoryName;
  String? parentId;

  int? id;

  AddCategoriesModel(
      {required this.categoryName,
         this.parentId,

        this.id});

  AddCategoriesModel.fromJson(Map<String, dynamic> json) {
    categoryName = json['category_name'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['category_name'] = categoryName;
    // ignore: cast_from_null_always_fails

    return data;
  }
}
class AddCategoriesInnerModel {
  String? categoryName;
  String? parentId;

  int? id;

  AddCategoriesInnerModel(
      {required this.categoryName,
       required this.parentId,

        this.id});

  AddCategoriesInnerModel.fromJson(Map<String, dynamic> json) {
    categoryName = json['category_name'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['category_name'] = categoryName;
    data['parent_id'] = parentId;


    return data;
  }
}