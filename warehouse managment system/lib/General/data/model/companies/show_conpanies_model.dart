class ShowCompaniesModel {
  int? id;
  String? companyCode;
  String? companyName;
  int? addressId;
  String? phoneNumber;
  String? email;
  String? companyRegister;
  String? industryRegister;
  String? createdAt;
  String? updatedAt;

  ShowCompaniesModel(
      {this.id,
        this.companyCode,
        this.companyName,
        this.addressId,
        this.phoneNumber,
        this.email,
        this.companyRegister,
        this.industryRegister,
        this.createdAt,
        this.updatedAt});

  ShowCompaniesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyCode = json['company_code'];
    companyName = json['company_name'];
    addressId = json['address_id'];
    phoneNumber = json['phone_number'];
    email = json['email'];
    companyRegister = json['company_register'];
    industryRegister = json['industry_register'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['company_code'] = this.companyCode;
    data['company_name'] = this.companyName;
    data['address_id'] = this.addressId;
    data['phone_number'] = this.phoneNumber;
    data['email'] = this.email;
    data['company_register'] = this.companyRegister;
    data['industry_register'] = this.industryRegister;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}