class ShowCategoriesModelGeneral {
  int? id;
  int ? parentId;
  String? categoryName;

  ShowCategoriesModelGeneral(
      {this.id,
        this.parentId,
        this.categoryName,
       });

  ShowCategoriesModelGeneral.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    parentId = json['parent_id'];
    categoryName = json['category_name'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['parent_id'] = parentId;
    data['category_name'] = categoryName;

    return data;
  }
}