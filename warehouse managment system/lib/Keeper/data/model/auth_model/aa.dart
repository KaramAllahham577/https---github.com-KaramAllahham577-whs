class aw {
  String? managerId;
  String? address;
  String? phoneNumber;
  String? space;
  String? companyRegister;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;

  aw(
      {this.managerId,
        this.address,
        this.phoneNumber,
        this.space,
        this.companyRegister,
        this.updatedAt,
        this.createdAt,
        this.id});

  aw.fromJson(Map<String, dynamic> json) {
    managerId = json['manager_id'];
    address = json['address'];
    phoneNumber = json['phone_number'];
    space = json['space'];
    companyRegister = json['company_register'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['manager_id'] = this.managerId;
    data['address'] = this.address;
    data['phone_number'] = this.phoneNumber;
    data['space'] = this.space;
    data['company_register'] = this.companyRegister;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}