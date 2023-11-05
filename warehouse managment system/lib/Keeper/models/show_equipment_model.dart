class ShowEquipmentModel {
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
  String? equipmentName;
  String? description;

  ShowEquipmentModel(
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
        this.equipmentName,
        this.description});

  ShowEquipmentModel.fromJson(Map<String, dynamic> json) {
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
    equipmentName = json['equipment_name'];
    description = json['description'];
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
    data['equipment_name'] = this.equipmentName;
    data['description'] = this.description;
    return data;
  }
}