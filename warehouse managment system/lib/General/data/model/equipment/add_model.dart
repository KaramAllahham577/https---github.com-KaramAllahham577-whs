class AddEquipmentsGeneralModel {
  String? equipmentName;
  String? description;
  int? id;

  AddEquipmentsGeneralModel({this.equipmentName, this.description, this.id});

  AddEquipmentsGeneralModel.fromJson(Map<String, dynamic> json) {
    equipmentName = json['equipment_name'];
    description = json['description'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['equipment_name'] = this.equipmentName;
    data['description'] = this.description;
    data['id'] = this.id;
    return data;
  }
}