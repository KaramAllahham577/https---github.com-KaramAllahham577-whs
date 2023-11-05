class AddProductModel {
  var productName;
  var description;
  var producingCompanyId;
  var supplierId;
  var uPCCode;
  var productCode;
  var categoryId;
  var weight;
  var wUnitId;
  var size;
  var sUnitId;
  var boxQuantity;
  var image;
  var updatedAt;
  var createdAt;


  AddProductModel({
    required this.productName,
    required this.description,
    required this.producingCompanyId,
    required this.supplierId,
    required this.productCode,
    required this.categoryId,
    required this.weight,
    required this.size,
    required this.boxQuantity,
    required this.wUnitId,
    required this.sUnitId
  });

  AddProductModel.fromJson(Map<String, dynamic> json) {
    productName = json['product_name'];
    description = json['description'];
    producingCompanyId = json['ProducingCompany_id'];
    supplierId = json['Supplier_id'];
    uPCCode = json['UPC_code'];
    productCode = json['product_code'];
    categoryId = json['Category_id'];
    weight = json['weight'];
    wUnitId = json['WUnit_id'];
    size = json['size'];
    sUnitId = json['SUnit_id'];
    boxQuantity = json['box_quantity'];
    image = json['image'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['product_name'] = productName;
    data['description'] = description;
    data['Producing_Company_id'] = producingCompanyId;
    data['supplier_id'] = '1';
    data['UPC_code'] = '1';
    data['product_code'] = '2';
    data['Category_id'] = categoryId;
    data['weight'] = weight;
    data['WUnit'] = wUnitId;
    data['size'] = size;
    data['SUnit'] = sUnitId;
    data['box_quantity'] = boxQuantity;



    return data;
  }
}
