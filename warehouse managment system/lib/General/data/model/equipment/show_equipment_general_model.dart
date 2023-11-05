class ShowEquipmentsGeneralModel {
  int? id;
  int? branchId;
  int? equipmentId;
  int? employeeId;
  int? quantity;
  int? cost;
  String? dateIn;
  int? available;
  String? createdAt;
  String? updatedAt;
  Equipments? equipments;

  ShowEquipmentsGeneralModel(
      {this.id,
        this.branchId,
        this.equipmentId,
        this.employeeId,
        this.quantity,
        this.cost,
        this.dateIn,
        this.available,
        this.createdAt,
        this.updatedAt,
        this.equipments});

  ShowEquipmentsGeneralModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    branchId = json['branch_id'];
    equipmentId = json['equipment_id'];
    employeeId = json['employee_id'];
    quantity = json['quantity'];
    cost = json['cost'];
    dateIn = json['date_in'];
    available = json['available'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    equipments = json['equipments'] != null
        ? new Equipments.fromJson(json['equipments'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['branch_id'] = this.branchId;
    data['equipment_id'] = this.equipmentId;
    data['employee_id'] = this.employeeId;
    data['quantity'] = this.quantity;
    data['cost'] = this.cost;
    data['date_in'] = this.dateIn;
    data['available'] = this.available;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.equipments != null) {
      data['equipments'] = this.equipments!.toJson();
    }
    return data;
  }
}

class Equipments {
  int? id;
  String? equipmentName;
  String? description;
  String? createdAt;
  String? updatedAt;

  Equipments(
      {this.id,
        this.equipmentName,
        this.description,
        this.createdAt,
        this.updatedAt});

  Equipments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    equipmentName = json['equipment_name'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['equipment_name'] = this.equipmentName;
    data['description'] = this.description;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}