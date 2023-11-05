class EquipmentFixesModel {
  List<EquipmentFixes>? equipmentFixes;
  int? equipmentFixTimes;
  int? statusCode;

  EquipmentFixesModel(
      {this.equipmentFixes, this.equipmentFixTimes, this.statusCode});

  EquipmentFixesModel.fromJson(Map<String, dynamic> json) {
    if (json['equipment fixes: '] != null) {
      equipmentFixes = <EquipmentFixes>[];
      json['equipment fixes: '].forEach((v) {
        equipmentFixes!.add(new EquipmentFixes.fromJson(v));
      });
    }
    equipmentFixTimes = json['equipment fix times: '];
    statusCode = json['status code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.equipmentFixes != null) {
      data['equipment fixes: '] =
          this.equipmentFixes!.map((v) => v.toJson()).toList();
    }
    data['equipment fix times: '] = this.equipmentFixTimes;
    data['status code'] = this.statusCode;
    return data;
  }
}

class EquipmentFixes {
  int? id;
  int? equipmentId;
  String? damageDate;
  String? fixDate;
  int? fixingCost;
  String? createdAt;
  String? updatedAt;

  EquipmentFixes(
      {this.id,
        this.equipmentId,
        this.damageDate,
        this.fixDate,
        this.fixingCost,
        this.createdAt,
        this.updatedAt});

  EquipmentFixes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    equipmentId = json['equipment_id'];
    damageDate = json['damage_date'];
    fixDate = json['fix_date'];
    fixingCost = json['fixing_cost'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['equipment_id'] = this.equipmentId;
    data['damage_date'] = this.damageDate;
    data['fix_date'] = this.fixDate;
    data['fixing_cost'] = this.fixingCost;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}