// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Equipment welcomeFromJson(String str) => Equipment.fromJson(json.decode(str));

String welcomeToJson(Equipment data) => json.encode(data.toJson());

class Equipment {
  SystemEqipmentData? systemEqipmentData;
  BarnchEquipmentData? barnchEquipmentData;
  int? statusCode;

  Equipment({
    this.systemEqipmentData,
    this.barnchEquipmentData,
    this.statusCode,
  });

  factory Equipment.fromJson(Map<String, dynamic> json) => Equipment(
    systemEqipmentData: SystemEqipmentData.fromJson(json["system eqipment data"]),
    barnchEquipmentData: BarnchEquipmentData.fromJson(json["barnch equipment data"]),
    statusCode: json["status code"],
  );

  Map<String, dynamic> toJson() => {
    "system eqipment data": systemEqipmentData?.toJson(),
    "barnch equipment data": barnchEquipmentData?.toJson(),
    "status code": statusCode,
  };
}

class BarnchEquipmentData {
  String? branchId;
  int? equipmentId;
  String? employeeId;
  String? quantity;
  String? cost;
  DateTime? dateIn;
  String? available;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;

  BarnchEquipmentData({
    this.branchId,
    this.equipmentId,
    this.employeeId,
    this.quantity,
    this.cost,
    this.dateIn,
    this.available,
    this.id,
  });

  factory BarnchEquipmentData.fromJson(Map<String, dynamic> json) => BarnchEquipmentData(
    branchId: json["branch_id"],
    equipmentId: json["equipment_id"],
    employeeId: json["employee_id"],
    quantity: json["quantity"],
    cost: json["cost"],
    dateIn: DateTime.parse(json["date_in"]),
    available: json["available"],

    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "branch_id": branchId,
    "equipment_id": equipmentId,
    "employee_id": employeeId,
    "quantity": quantity,
    "cost": cost,
    "date_in": "${dateIn?.year.toString().padLeft(4, '0')}-${dateIn?.month.toString().padLeft(2, '0')}-${dateIn?.day.toString().padLeft(2, '0')}",
    "available": available,
    "updated_at": updatedAt?.toIso8601String(),
    "created_at": createdAt?.toIso8601String(),
    "id": id,
  };
}

class SystemEqipmentData {
  String? equipmentName;
  String? description;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;

  SystemEqipmentData({
    this.equipmentName,
    this.description,

    this.id,
  });

  factory SystemEqipmentData.fromJson(Map<String, dynamic> json) => SystemEqipmentData(
    equipmentName: json["equipment_name"],
    description: json["description"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "equipment_name": equipmentName,
    "description": description,
    "updated_at": updatedAt?.toIso8601String(),
    "created_at": createdAt?.toIso8601String(),
    "id": id,
  };
}
