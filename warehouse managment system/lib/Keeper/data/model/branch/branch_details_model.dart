class BranchDetailsModel {
  int? id;
  int? addressId;
  String? phoneNumber;
  int? space;
  int? sectionMaxCapacity;
  String? companyRegister;
  String? createdAt;
  String? updatedAt;
  Address? address;
  List<Employees>? employees;

  BranchDetailsModel(
      {this.id,
        this.addressId,
        this.phoneNumber,
        this.space,
        this.sectionMaxCapacity,
        this.companyRegister,
        this.createdAt,
        this.updatedAt,
        this.address,
        this.employees});

  BranchDetailsModel.fromJson(Map<String, dynamic> json) {
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
    if (json['employees'] != null) {
      employees = <Employees>[];
      json['employees'].forEach((v) {
        employees!.add(new Employees.fromJson(v));
      });
    }
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
    if (employees != null) {
      data['employees'] = employees!.map((v) => v.toJson()).toList();
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
  Regions? regions;

  Address(
      {this.id,
        this.regionId,
        this.address,
        this.createdAt,
        this.updatedAt,
        this.regions});

  Address.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    regionId = json['region_id'];
    address = json['address'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    regions =
    json['regions'] != null ? new Regions.fromJson(json['regions']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['region_id'] = regionId;
    data['address'] = address;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (regions != null) {
      data['regions'] = regions!.toJson();
    }
    return data;
  }
}

class Regions {
  int? id;
  int? cityId;
  String? region;
  String? createdAt;
  String? updatedAt;
  Cities? cities;

  Regions(
      {this.id,
        this.cityId,
        this.region,
        this.createdAt,
        this.updatedAt,
        this.cities});

  Regions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cityId = json['city_id'];
    region = json['region'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    cities =
    json['cities'] != null ? new Cities.fromJson(json['cities']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['city_id'] = cityId;
    data['region'] = region;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (cities != null) {
      data['cities'] = cities!.toJson();
    }
    return data;
  }
}

class Cities {
  int? id;
  int? countryId;
  String? city;
  String? createdAt;
  String? updatedAt;
  Countries? countries;

  Cities(
      {this.id,
        this.countryId,
        this.city,
        this.createdAt,
        this.updatedAt,
        this.countries});

  Cities.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryId = json['country_id'];
    city = json['city'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    countries = json['countries'] != null
        ? new Countries.fromJson(json['countries'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['country_id'] = countryId;
    data['city'] = city;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (countries != null) {
      data['countries'] = countries!.toJson();
    }
    return data;
  }
}

class Countries {
  int? id;
  String? country;
  Null? createdAt;
  Null? updatedAt;

  Countries({this.id, this.country, this.createdAt, this.updatedAt});

  Countries.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    country = json['country'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['country'] = country;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Employees {
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
  Manager? manager;

  Employees(
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
        this.updatedAt,
        this.manager});

  Employees.fromJson(Map<String, dynamic> json) {
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
    manager =
    json['manager'] != null ? new Manager.fromJson(json['manager']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
    if (manager != null) {
      data['manager'] = manager!.toJson();
    }
    return data;
  }
}

class Manager {
  int? id;
  int? employeeId;
  int? roleId;
  String? createdAt;
  String? updatedAt;

  Manager(
      {this.id, this.employeeId, this.roleId, this.createdAt, this.updatedAt});

  Manager.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    employeeId = json['employee_id'];
    roleId = json['role_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['employee_id'] = employeeId;
    data['role_id'] = roleId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}