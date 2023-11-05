class   ProductDetailsModels {
  Details? details;
  String? quanty;
  int? statusCode;

  ProductDetailsModels({this.details, this.quanty, this.statusCode});

  ProductDetailsModels.fromJson(Map<String, dynamic> json) {
    details =
    json['Details'] != null ? Details.fromJson(json['Details']) : null;
    quanty = json['quanty'];
    statusCode = json['status code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (details != null) {
      data['Details'] = details!.toJson();
    }
    data['quanty'] = quanty;
    data['status code'] = statusCode;
    return data;
  }
}

class Details {
  var id;
  var productId;
  var branchId;
  var inQuantity;
  var recentQuantity;
  var dateIn;
  var prodDate;
  var expDate;
  var purchaseNum;
  var buyingCost;
  var price;
  var createdAt;
  var updatedAt;
  var products;

  Details(
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

  Details.fromJson(Map<String, dynamic> json) {
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
        ? Products.fromJson(json['products'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['product_id'] = productId;
    data['branch_id'] = branchId;
    data['in_quantity'] = inQuantity;
    data['recent_quantity'] = recentQuantity;
    data['date_in'] = dateIn;
    data['prod_date'] = prodDate;
    data['exp_date'] = expDate;
    data['purchase_num'] = purchaseNum;
    data['buying_cost'] = buyingCost;
    data['price'] = price;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (products != null) {
      data['products'] = products!.toJson();
    }
    return data;
  }
}

class Products {
  int? id;
  String? uPCCode;
  String? productCode;
  int? producingCompanyId;
  String? productName;
  int? categoryId;
  String? description;
  int? supplierId;
  String? image;
  int? weight;
  String? wUnit;
  int? size;
  String? sUnit;
  int? boxQuantity;
  String? createdAt;
  String? updatedAt;
  ProducingCompanies? producingCompanies;

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
        this.updatedAt,
        this.producingCompanies});

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
    producingCompanies = json['producing_companies'] != null
        ? ProducingCompanies.fromJson(json['producing_companies'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['UPC_code'] = uPCCode;
    data['product_code'] = productCode;
    data['ProducingCompany_id'] = producingCompanyId;
    data['product_name'] = productName;
    data['Category_id'] = categoryId;
    data['description'] = description;
    data['Supplier_id'] = supplierId;
    data['image'] = image;
    data['weight'] = weight;
    data['WUnit'] = wUnit;
    data['size'] = size;
    data['SUnit'] = sUnit;
    data['box_quantity'] = boxQuantity;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (producingCompanies != null) {
      data['producing_companies'] = producingCompanies!.toJson();
    }
    return data;
  }
}

class ProducingCompanies {
  int? id;
  String? companyCode;
  String? companyName;
  int? addressId;
  String? phoneNumber;
  String? email;
  String? companyRegister;
  String? industryRegister;
  String? createdAt;
  String? updatedAt;

  ProducingCompanies(
      {this.id,
        this.companyCode,
        this.companyName,
        this.addressId,
        this.phoneNumber,
        this.email,
        this.companyRegister,
        this.industryRegister,
        this.createdAt,
        this.updatedAt});

  ProducingCompanies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyCode = json['company_code'];
    companyName = json['company_name'];
    addressId = json['address_id'];
    phoneNumber = json['phone_number'];
    email = json['email'];
    companyRegister = json['company_register'];
    industryRegister = json['industry_register'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['company_code'] = companyCode;
    data['company_name'] = companyName;
    data['address_id'] = addressId;
    data['phone_number'] = phoneNumber;
    data['email'] = email;
    data['company_register'] = companyRegister;
    data['industry_register'] = industryRegister;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}