// To parse this JSON data, do
//
//     final shipmentsOrdersList = shipmentsOrdersListFromJson(jsonString);

import 'dart:convert';

List<ShipmentsOrdersList> shipmentsOrdersListFromJson(String str) => List<ShipmentsOrdersList>.from(json.decode(str).map((x) => ShipmentsOrdersList.fromJson(x)));

String shipmentsOrdersListToJson(List<ShipmentsOrdersList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ShipmentsOrdersList {
  int? id;
  int? orderListId;
  int? shipmentId;
  DateTime? orderDate;
  int? ready;
  int? arrived;
  DateTime? createdAt;
  DateTime? updatedAt;
  OrderList? orderList;

  ShipmentsOrdersList({
    this.id,
    this.orderListId,
    this.shipmentId,
    this.orderDate,
    this.ready,
    this.arrived,
    this.createdAt,
    this.updatedAt,
    this.orderList,
  });

  factory ShipmentsOrdersList.fromJson(Map<String, dynamic> json) => ShipmentsOrdersList(
    id: json["id"],
    orderListId: json["OrderList_id"],
    shipmentId: json["shipment_id"],
    orderDate: DateTime.parse(json["order_date"]),
    ready: json["ready"],
    arrived: json["arrived"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    orderList: OrderList.fromJson(json["order_list"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "OrderList_id": orderListId,
    "shipment_id": shipmentId,
    "order_date": "${orderDate!.year.toString().padLeft(4, '0')}-${orderDate!.month.toString().padLeft(2, '0')}-${orderDate!.day.toString().padLeft(2, '0')}",
    "ready": ready,
    "arrived": arrived,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
    "order_list": orderList!.toJson(),
  };
}

class OrderList {
  int? id;
  int? customerId;
  int? branchId;
  int? orderQuantity;
  int? orderCost;
  int? orderd;
  DateTime? createdAt;
  DateTime? updatedAt;
  Customers? customers;

  OrderList({
    this.id,
    this.customerId,
    this.branchId,
    this.orderQuantity,
    this.orderCost,
    this.orderd,
    this.createdAt,
    this.updatedAt,
    this.customers,
  });

  factory OrderList.fromJson(Map<String, dynamic> json) => OrderList(
    id: json["id"],
    customerId: json["customer_id"],
    branchId: json["branch_id"],
    orderQuantity: json["order_quantity"],
    orderCost: json["order_cost"],
    orderd: json["orderd"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    customers: Customers.fromJson(json["customers"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "customer_id": customerId,
    "branch_id": branchId,
    "order_quantity": orderQuantity,
    "order_cost": orderCost,
    "orderd": orderd,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
    "customers": customers!.toJson(),
  };
}

class Customers {
  int? id;
  String? customerName;
  String? email;
  DateTime? emailVerifiedAt;
  String? phoneNumber;
  int? addressId;
  String? companyRegister;
  String? industryRegister;
  int? isProducingCompany;
  DateTime? createdAt;
  DateTime? updatedAt;

  Customers({
    this.id,
    this.customerName,
    this.email,
    this.emailVerifiedAt,
    this.phoneNumber,
    this.addressId,
    this.companyRegister,
    this.industryRegister,
    this.isProducingCompany,
    this.createdAt,
    this.updatedAt,
  });

  factory Customers.fromJson(Map<String, dynamic> json) => Customers(
    id: json["id"],
    customerName: json["customer_name"],
    email: json["email"],
    emailVerifiedAt: DateTime.parse(json["email_verified_at"]),
    phoneNumber: json["phone_number"],
    addressId: json["address_id"],
    companyRegister: json["company_register"],
    industryRegister: json["industry_register"],
    isProducingCompany: json["is_ProducingCompany"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "customer_name": customerName,
    "email": email,
    "email_verified_at": emailVerifiedAt!.toIso8601String(),
    "phone_number": phoneNumber,
    "address_id": addressId,
    "company_register": companyRegister,
    "industry_register": industryRegister,
    "is_ProducingCompany": isProducingCompany,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
  };
}
