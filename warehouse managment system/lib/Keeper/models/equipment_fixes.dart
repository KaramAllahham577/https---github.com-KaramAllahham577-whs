import 'dart:convert';

class EquipmentFixes {
  int? id;
  int? equipmentId;
  DateTime? damageDate;
  DateTime? fixDate;
  int? fixingCost;
  DateTime? createdAt;
  DateTime? updatedAt;

  EquipmentFixes({
    this.id,
    this.equipmentId,
    this.damageDate,
    this.fixDate,
    this.fixingCost,
    this.createdAt,
    this.updatedAt,
  });

  factory EquipmentFixes.fromRawJson(String str) => EquipmentFixes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EquipmentFixes.fromJson(Map<String, dynamic> json) => EquipmentFixes(
    id: json["id"],
    equipmentId: json["equipment_id"],
    damageDate: DateTime.parse(json["damage_date"]),
    fixDate: DateTime.parse(json["fix_date"]),
    fixingCost: json["fixing_cost"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "equipment_id": equipmentId,
    "damage_date": "${damageDate!.year.toString().padLeft(4, '0')}-${damageDate!.month.toString().padLeft(2, '0')}-${damageDate!.day.toString().padLeft(2, '0')}",
    "fix_date": "${fixDate!.year.toString().padLeft(4, '0')}-${fixDate!.month.toString().padLeft(2, '0')}-${fixDate!.day.toString().padLeft(2, '0')}",
    "fixing_cost": fixingCost,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
  };
}
