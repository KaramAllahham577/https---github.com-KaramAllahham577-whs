class ShowProductModels {
  var id;
  var productId;
  var branchId;
  var inQuantity;
  var recentQuantity;
  String? dateIn;
  String? prodDate;
  String? expDate;
  String? purchaseNum;
  var buyingCost;
  var price;
  String? createdAt;
  String? updatedAt;
  Products? products;

  ShowProductModels(
      {this.id,
        this.productId,
        this.branchId,
        this.inQuantity,
        this.recentQuantity,
        this.dateIn,
        this.prodDate,
        this.expDate,
        this.purchaseNum,
        this.buyingCost,
        this.price,
        this.createdAt,
        this.updatedAt,
        this.products});

  ShowProductModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    branchId = json['branch_id'];
    inQuantity = json['in_quantity'];
    recentQuantity = json['recent_quantity'];
    dateIn = json['date_in'];
    prodDate = json['prod_date'];
    expDate = json['exp_date'];
    purchaseNum = json['purchase_num'];
    buyingCost = json['buying_cost'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    products = json['products'] != null
        ? new Products.fromJson(json['products'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['branch_id'] = this.branchId;
    data['in_quantity'] = this.inQuantity;
    data['recent_quantity'] = this.recentQuantity;
    data['date_in'] = this.dateIn;
    data['prod_date'] = this.prodDate;
    data['exp_date'] = this.expDate;
    data['purchase_num'] = this.purchaseNum;
    data['buying_cost'] = this.buyingCost;
    data['price'] = this.price;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.products != null) {
      data['products'] = this.products!.toJson();
    }
    return data;
  }
}

class Products {
  int? id;
  String? uPCCode;
  String? productCode;
  var producingCompanyId;
  String? productName;
  var categoryId;
  String? description;
  var supplierId;
  String? image;
  var weight;
  String? wUnit;
  var size;
  String? sUnit;
  var boxQuantity;
  String? createdAt;
  String? updatedAt;

  Products(
      {this.id,
        this.uPCCode,
        this.productCode,
        this.producingCompanyId,
        this.productName,
        this.categoryId,
        this.description,
        this.supplierId,
        this.image,
        this.weight,
        this.wUnit,
        this.size,
        this.sUnit,
        this.boxQuantity,
        this.createdAt,
        this.updatedAt});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uPCCode = json['UPC_code'];
    productCode = json['product_code'];
    producingCompanyId = json['ProducingCompany_id'];
    productName = json['product_name'];
    categoryId = json['Category_id'];
    description = json['description'];
    supplierId = json['Supplier_id'];
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
    data['Supplier_id'] = this.supplierId;
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