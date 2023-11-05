class ShowProductBranchGeneralModel {
 var id;
 var uPCCode;
 var productCode;
 var producingCompanyId;
 var productName;
 var categoryId;
 var description;
 var  supplierId;
 var image;
 var weight;
 var wUnit;
 var size;
 var sUnit;
 var boxQuantity;

  List<BranchProducts>? branchProducts;

  ShowProductBranchGeneralModel(
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

        this.branchProducts});

  ShowProductBranchGeneralModel.fromJson(Map<String, dynamic> json) {
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

    if (json['branch_products'] != null) {
      branchProducts = <BranchProducts>[];
      json['branch_products'].forEach((v) {
        branchProducts!.add(new BranchProducts.fromJson(v));
      });
    }
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

    if (this.branchProducts != null) {
      data['branch_products'] =
          this.branchProducts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BranchProducts {
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

  BranchProducts(
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
        this.updatedAt});

  BranchProducts.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}