class   BranchesModel {
  int? id;
  int? managerId;
  String? address;
  int? phoneNumber;
  int? space;
  int? companyRegister;
  String? createdAt;
  String? updatedAt;
  Managers? managers;

  BranchesModel(
      {this.id,
        this.managerId,
        this.address,
        this.phoneNumber,
        this.space,
        this.companyRegister,
        this.createdAt,
        this.updatedAt,
        this.managers});

  BranchesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    managerId = json['manager_id'];
    address = json['address'];
    phoneNumber = json['phone_number'];
    space = json['space'];
    companyRegister = json['company_register'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    managers = json['managers'] != null
        ? Managers.fromJson(json['managers'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['manager_id'] = managerId;
    data['address'] = address;
    data['phone_number'] = phoneNumber;
    data['space'] = space;
    data['company_register'] = companyRegister;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (managers != null) {
      data['managers'] = managers!.toJson();
    }
    return data;
  }
}

class Managers {
  int? id;
  String? managerName;
  int? employeeId;
  String? email;
  int? roleId;
  String? createdAt;
  String? updatedAt;

  Managers(
      {this.id,
        this.managerName,
        this.employeeId,
        this.email,
        this.roleId,
        this.createdAt,
        this.updatedAt});

  Managers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    managerName = json['manager_name'];
    employeeId = json['employee_id'];
    email = json['email'];
    roleId = json['role_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['manager_name'] = managerName;
    data['employee_id'] = employeeId;
    data['email'] = email;
    data['role_id'] = roleId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}