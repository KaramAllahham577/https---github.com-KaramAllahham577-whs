class EmployeeProfileModel {
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

  EmployeeProfileModel(
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

  EmployeeProfileModel.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['employee_name'] = employeeName;
    data['email'] = email;
    data['phone_number'] = phoneNumber;
    data['address_id'] = addressId;
    data['branch_id'] = branchId;
    data['salary'] = salary;
    data['photo'] = photo;
    data['position'] = position;
    data['is_manager'] = isManager;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}