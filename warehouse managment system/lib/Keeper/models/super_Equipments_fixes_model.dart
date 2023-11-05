// To parse this JSON data, do
//
//     final superEquipmentFixesModel = superEquipmentFixesModelFromJson(jsonString);

import 'dart:convert';

import 'equipment_fixes.dart';

class SuperEquipmentFixesModel {
  List<EquipmentFixes>? equipmentFixes;
  int? equipmentFixTimes;
  int? statusCode;

  SuperEquipmentFixesModel({
    this.equipmentFixes,
    this.equipmentFixTimes,
    this.statusCode,
  });

  factory SuperEquipmentFixesModel.fromRawJson(String str) => SuperEquipmentFixesModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SuperEquipmentFixesModel.fromJson(Map<String, dynamic> json) => SuperEquipmentFixesModel(
    equipmentFixes: List<EquipmentFixes>.from(json["equipment fixes: "].map((x) => EquipmentFixes.fromJson(x))),
    equipmentFixTimes: json["equipment fix times: "],
    statusCode: json["status code"],
  );

  Map<String, dynamic> toJson() => {
    "equipment fixes: ": List<dynamic>.from(equipmentFixes!.map((x) => x.toJson())),
    "equipment fix times: ": equipmentFixTimes,
    "status code": statusCode,
  };
}