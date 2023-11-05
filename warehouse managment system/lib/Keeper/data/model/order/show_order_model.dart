class ShowOrederModel {
  int? id;
  int? orderListId;
  int? shipmentId;
  String? orderDate;
  int? ready;
  int? arrived;
  String? createdAt;
  String? updatedAt;
  int? laravelThroughKey;
  OrderList? orderList;

  ShowOrederModel(
      {this.id,
        this.orderListId,
        this.shipmentId,
        this.orderDate,
        this.ready,
        this.arrived,
        this.createdAt,
        this.updatedAt,
        this.laravelThroughKey,
        this.orderList});

  ShowOrederModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderListId = json['OrderList_id'];
    shipmentId = json['shipment_id'];
    orderDate = json['order_date'];
    ready = json['ready'];
    arrived = json['arrived'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    laravelThroughKey = json['laravel_through_key'];
    orderList = json['order_list'] != null
        ? new OrderList.fromJson(json['order_list'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['OrderList_id'] = this.orderListId;
    data['shipment_id'] = this.shipmentId;
    data['order_date'] = this.orderDate;
    data['ready'] = this.ready;
    data['arrived'] = this.arrived;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['laravel_through_key'] = this.laravelThroughKey;
    if (this.orderList != null) {
      data['order_list'] = this.orderList!.toJson();
    }
    return data;
  }
}

class OrderList {
  int? id;
  int? customerId;
  int? branchId;
  int? orderQuantity;
  int? orderCost;
  int? orderd;
  String? createdAt;
  String? updatedAt;
  Customers? customers;

  OrderList(
      {this.id,
        this.customerId,
        this.branchId,
        this.orderQuantity,
        this.orderCost,
        this.orderd,
        this.createdAt,
        this.updatedAt,
        this.customers});

  OrderList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    customerId = json['customer_id'];
    branchId = json['branch_id'];
    orderQuantity = json['order_quantity'];
    orderCost = json['order_cost'];
    orderd = json['orderd'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    customers = json['customers'] != null
        ? new Customers.fromJson(json['customers'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['customer_id'] = this.customerId;
    data['branch_id'] = this.branchId;
    data['order_quantity'] = this.orderQuantity;
    data['order_cost'] = this.orderCost;
    data['orderd'] = this.orderd;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.customers != null) {
      data['customers'] = this.customers!.toJson();
    }
    return data;
  }
}

class Customers {
  int? id;
  String? customerName;
  String? email;
  String? emailVerifiedAt;
  String? phoneNumber;
  int? addressId;
  String? companyRegister;
  String? industryRegister;
  int? isProducingCompany;
  String? createdAt;
  String? updatedAt;

  Customers(
      {this.id,
        this.customerName,
        this.email,
        this.emailVerifiedAt,
        this.phoneNumber,
        this.addressId,
        this.companyRegister,
        this.industryRegister,
        this.isProducingCompany,
        this.createdAt,
        this.updatedAt});

  Customers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    customerName = json['customer_name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    phoneNumber = json['phone_number'];
    addressId = json['address_id'];
    companyRegister = json['company_register'];
    industryRegister = json['industry_register'];
    isProducingCompany = json['is_ProducingCompany'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['customer_name'] = this.customerName;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['phone_number'] = this.phoneNumber;
    data['address_id'] = this.addressId;
    data['company_register'] = this.companyRegister;
    data['industry_register'] = this.industryRegister;
    data['is_ProducingCompany'] = this.isProducingCompany;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}