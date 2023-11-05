class EditProductModel {
  String? productId;
  String? branchId;
  String? quantity;
  String? price;
  String? prodDate;
  String? expDate;
  String? dateIn;
  String? purchaseNum;
  String? buyingCost;
  String? supplierId;

  EditProductModel(
      {required this.productId,
        required this.branchId,
        required this.quantity,
        required this.price,
        required this.prodDate,
        required this.expDate,
        required this.dateIn,
        required this.purchaseNum,
        required this.buyingCost,
      required this.supplierId});

  EditProductModel.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    branchId = json['branch_id'];
    quantity = json['quantity'];
    price = json['price'];
    prodDate = json['prod_date'];
    expDate = json['exp_date'];
    dateIn = json['date_in'];
    purchaseNum = json['purchase_num'];
    buyingCost = json['buying_cost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

     data['product_id']=productId;
     data['branch_id']=branchId;
     data['quantity']=quantity;
    data['price']  =price;
    data['prod_date'] = prodDate;
    data['exp_date'] = expDate;
    data['date_in'] = dateIn;
    data['buying_cost'] = buyingCost;
    data['buying_cost'] = buyingCost;
    data["supplier_id"]=supplierId  ;

    return data;
  }
}