class AddproductBranchModel {
  String? productId;
  String? branchId;
  String? inQuantity;

  String? price;
  String? prodDate;
  String? expDate;
  String? dateIn;
  String? purchaseNum;
  String? buyingCost;
  String? supplierId;


  AddproductBranchModel(
      {required this.productId,
        required this.branchId,
        required this.inQuantity,

        required this.price,
        required this.prodDate,
        required this.expDate,
        required this.dateIn,
        required this.purchaseNum,
        required this.buyingCost,
        required this.supplierId
        });

  AddproductBranchModel.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    branchId = json['branch_id'];
    inQuantity = json['in_quantity'];

    price = json['price'];
    prodDate = json['prod_date'];
    expDate = json['exp_date'];
    dateIn = json['date_in'];
    purchaseNum = json['purchase_num'];
    buyingCost = json['buying_cost'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = productId;
    data['branch_id'] = branchId;
    data['in_quantity'] = inQuantity;

    data['price'] = price;
    data['prod_date'] = prodDate;
    data['exp_date'] = expDate;
    data['date_in'] = dateIn;
    data['purchase_num'] = purchaseNum;
    data['buying_cost'] = buyingCost;
    data['Supplier_id']=supplierId;

    return data;
  }
}