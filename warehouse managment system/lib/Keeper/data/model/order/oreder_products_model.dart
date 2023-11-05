class OrderProductsModel {
  int? quantity;
  int? totalPrice;
  int? price;
  String? productName;

  OrderProductsModel(
      {this.quantity, this.totalPrice, this.price, this.productName});

  OrderProductsModel.fromJson(Map<String, dynamic> json) {
    quantity = json['quantity'];
    totalPrice = json['total_price'];
    price = json['price'];
    productName = json['product_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['quantity'] = this.quantity;
    data['total_price'] = this.totalPrice;
    data['price'] = this.price;
    data['product_name'] = this.productName;
    return data;
  }
}