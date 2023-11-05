class LoginModel{
  String? name;

  LoginModel({required this.name});
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['employee_name'] = name;
    return data;}
}
