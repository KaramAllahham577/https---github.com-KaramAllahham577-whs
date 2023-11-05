class ProductsDetailsGeneralModel {
  Data? data;
  int? status;

  ProductsDetailsGeneralModel({this.data, this.status});

  ProductsDetailsGeneralModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['status'] = this.status;
    return data;
  }
}

class Data {
  int? id;
  String? uPCCode;
  String? productCode;
  int? producingCompanyId;
  String? productName;
  int? categoryId;
  String? description;
  String? image;
  int? weight;
  String? wUnit;
  int? size;
  String? sUnit;
  int? boxQuantity;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.uPCCode,
        this.productCode,
        this.producingCompanyId,
        this.productName,
        this.categoryId,
        this.description,
        this.image,
        this.weight,
        this.wUnit,
        this.size,
        this.sUnit,
        this.boxQuantity,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uPCCode = json['UPC_code'];
    productCode = json['product_code'];
    producingCompanyId = json['ProducingCompany_id'];
    productName = json['product_name'];
    categoryId = json['Category_id'];
    description = json['description'];
    image = json['image'];
    weight = json['weight'];
    wUnit = json['WUnit'];
    size = json['size'];
    sUnit = json['SUnit'];
    boxQuantity = json['box_quantity'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['UPC_code'] = this.uPCCode;
    data['product_code'] = this.productCode;
    data['ProducingCompany_id'] = this.producingCompanyId;
    data['product_name'] = this.productName;
    data['Category_id'] = this.categoryId;
    data['description'] = this.description;
    data['image'] = this.image;
    data['weight'] = this.weight;
    data['WUnit'] = this.wUnit;
    data['size'] = this.size;
    data['SUnit'] = this.sUnit;
    data['box_quantity'] = this.boxQuantity;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}