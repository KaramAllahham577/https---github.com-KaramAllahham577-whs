// To parse this JSON data, do
//
//     final shipments = shipmentsFromJson(jsonString);

import 'dart:convert';

List<Shipments> shipmentsFromJson(String str) => List<Shipments>.from(json.decode(str).map((x) => Shipments.fromJson(x)));

String shipmentsToJson(List<Shipments> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Shipments {
  int? id;
  String? shippingCompany;
  String? inOrOut;
  String? shipmentDate;
  String? shipmentDay;
  String? shipmentType;
  int? maxQuantity;
  int? shipmentQuantity;
  int? shipProductsCost;
  int? shipmentCost;
  int? arrived;
  String? sourceAddress;
  String? sourceCity;
  String? sourceRegion;
  String? sourceCountry;
  String? destinationAddress;
  String? destinationCity;
  String? destinationRegion;
  String? destinationCountry;

  Shipments({this.id, this.shippingCompany, this.inOrOut, this.shipmentDate, this.shipmentDay, this.shipmentType, this.maxQuantity, this.shipmentQuantity, this.shipProductsCost, this.shipmentCost, this.arrived, this.sourceAddress, this.sourceCity, this.sourceRegion, this.sourceCountry, this.destinationAddress, this.destinationCity, this.destinationRegion, this.destinationCountry});

  Shipments.fromJson(Map<String, dynamic> json) {
  id = json['id'];
  shippingCompany = json['shipping_company'];
  inOrOut = json['in_or_out'];
  shipmentDate = json['shipment_date'];
  shipmentDay = json['shipment_day'];
  shipmentType = json['shipment_type'];
  maxQuantity = json['max_quantity'];
  shipmentQuantity = json['shipment_quantity'];
  shipProductsCost = json['shipProducts_cost'];
  shipmentCost = json['shipment_cost'];
  arrived = json['arrived'];
  sourceAddress = json['source_address'];
  sourceCity = json['source_city'];
  sourceRegion = json['source_region'];
  sourceCountry = json['source_country'];
  destinationAddress = json['destination_address'];
  destinationCity = json['destination_city'];
  destinationRegion = json['destination_region'];
  destinationCountry = json['destination_country'];
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = this.id;
  data['shipping_company'] = this.shippingCompany;
  data['in_or_out'] = this.inOrOut;
  data['shipment_date'] = this.shipmentDate;
  data['shipment_day'] = this.shipmentDay;
  data['shipment_type'] = this.shipmentType;
  data['max_quantity'] = this.maxQuantity;
  data['shipment_quantity'] = this.shipmentQuantity;
  data['shipProducts_cost'] = this.shipProductsCost;
  data['shipment_cost'] = this.shipmentCost;
  data['arrived'] = this.arrived;
  data['source_address'] = this.sourceAddress;
  data['source_city'] = this.sourceCity;
  data['source_region'] = this.sourceRegion;
  data['source_country'] = this.sourceCountry;
  data['destination_address'] = this.destinationAddress;
  data['destination_city'] = this.destinationCity;
  data['destination_region'] = this.destinationRegion;
  data['destination_country'] = this.destinationCountry;
  return data;
}
}
