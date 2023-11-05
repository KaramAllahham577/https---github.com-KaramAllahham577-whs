// To parse this JSON data, do
//
//     final showOrderProductsModel = showOrderProductsModelFromJson(jsonString);

import 'dart:convert';

List<ShowOrderProductsModel> showOrderProductsModelFromJson(String str) => List<ShowOrderProductsModel>.from(json.decode(str).map((x) => ShowOrderProductsModel.fromJson(x)));

String showOrderProductsModelToJson(List<ShowOrderProductsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ShowOrderProductsModel {
  int? quantity;
  int? totalPrice;
  int? price;
  String? productName;

  ShowOrderProductsModel({
    this.quantity,
    this.totalPrice,
    this.price,
    this.productName,
  });

  factory ShowOrderProductsModel.fromJson(Map<String, dynamic> json) => ShowOrderProductsModel(
    quantity: json["quantity"],
    totalPrice: json["total_price"],
    price: json["price"],
    productName: json["product_name"],
  );

  Map<String, dynamic> toJson() => {
    "quantity": quantity,
    "total_price": totalPrice,
    "price": price,
    "product_name": productName,
  };
}
