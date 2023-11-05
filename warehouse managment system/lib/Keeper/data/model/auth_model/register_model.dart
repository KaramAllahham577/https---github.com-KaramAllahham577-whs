class RegisterModel {
  String? name;
  String? email;
  String? roleId;
  String? password;
  String? confirmPassword;
  String? phone;
  String? address;
  String? salary;
  String? isManager;

  RegisterModel(
      {required this.name,
        required this.isManager,
        required this.salary,
        required this.phone,
       required this.email,
       required this.roleId,
       required this.password,


       required this.confirmPassword,
       required this.address});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    name = json['manager_name'];

    email = json['email'];
    roleId = json['role_id'];
    password = json['updated_at'];
    confirmPassword = json['created_at'];
    address = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['employee_name'] = name;

    data['email'] = email;
    data['password'] = password;
    data['password_confirmation'] = confirmPassword;
    data['phone_number'] = phone;
    data['address'] = address;
    data['is_manager'] = isManager;
    data['salary'] = salary;
    data['role_id'] = "1";

    return data;
  }
}