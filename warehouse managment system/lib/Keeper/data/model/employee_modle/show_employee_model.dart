class SHowEmployeeModel {
  int? id;
  int? employeeId;
  int? roleId;
  String? createdAt;
  String? updatedAt;
  int? laravelThroughKey;
  Employee? employee;

  SHowEmployeeModel(
      {this.id,
        this.employeeId,
        this.roleId,
        this.createdAt,
        this.updatedAt,
        this.laravelThroughKey,
        this.employee});

  SHowEmployeeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    employeeId = json['employee_id'];
    roleId = json['role_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    laravelThroughKey = json['laravel_through_key'];
    employee = json['employee'] != null
        ? new Employee.fromJson(json['employee'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['employee_id'] = this.employeeId;
    data['role_id'] = this.roleId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['laravel_through_key'] = this.laravelThroughKey;

      data['employee'] = this.employee!.toJson();
    return data;
  }
}

class Employee {
  int? id;
  String? employeeName;
  String? email;
  String? phoneNumber;
  int? addressId;
  int? branchId;
  int? salary;
  String? photo;
  String? position;
  int? isManager;
  String? createdAt;
  String? updatedAt;

  Employee(
      {this.id,
        this.employeeName,
        this.email,
        this.phoneNumber,
        this.addressId,
        this.branchId,
        this.salary,
        this.photo,
        this.position,
        this.isManager,
        this.createdAt,
        this.updatedAt});

  Employee.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    employeeName = json['employee_name'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    addressId = json['address_id'];
    branchId = json['branch_id'];
    salary = json['salary'];
    photo = json['photo'];
    position = json['position'];
    isManager = json['is_manager'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['employee_name'] = this.employeeName;
    data['email'] = this.email;
    data['phone_number'] = this.phoneNumber;
    data['address_id'] = this.addressId;
    data['branch_id'] = this.branchId;
    data['salary'] = this.salary;
    data['photo'] = this.photo;
    data['position'] = this.position;
    data['is_manager'] = this.isManager;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}