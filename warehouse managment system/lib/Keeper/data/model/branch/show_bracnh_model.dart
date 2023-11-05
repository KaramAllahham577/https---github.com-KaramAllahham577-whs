class ShowBranchModel {
  int? id;
  int? addressId;
  String? phoneNumber;
  int? space;
  int? sectionMaxCapacity;
  String? companyRegister;
  String? createdAt;
  String? updatedAt;
  Address? address;

  ShowBranchModel(
      {this.id,
        this.addressId,
        this.phoneNumber,
        this.space,
        this.sectionMaxCapacity,
        this.companyRegister,
        this.createdAt,
        this.updatedAt,
        this.address});

  ShowBranchModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    addressId = json['address_id'];
    phoneNumber = json['phone_number'];
    space = json['space'];
    sectionMaxCapacity = json['sectionMaxCapacity'];
    companyRegister = json['company_register'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['address_id'] = addressId;
    data['phone_number'] = phoneNumber;
    data['space'] = space;
    data['sectionMaxCapacity'] = sectionMaxCapacity;
    data['company_register'] = companyRegister;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (address != null) {
      data['address'] = address!.toJson();
    }
    return data;
  }
}

class Address {
  int? id;
  int? regionId;
  String? address;
  String? createdAt;
  String? updatedAt;

  Address(
      {this.id, this.regionId, this.address, this.createdAt, this.updatedAt});

  Address.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    regionId = json['region_id'];
    address = json['address'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['region_id'] = regionId;
    data['address'] = address;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}