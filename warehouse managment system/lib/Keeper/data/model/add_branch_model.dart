class AddBranchModel {

  String? address;
  String? phoneNumber;
  String? space;
  String? companyRegister;
  String? sectionMaxCapacity;


  AddBranchModel(
      {
        required this.address,
        required this.phoneNumber,
       required this.space,
       required this.companyRegister,
      required this.sectionMaxCapacity});

  AddBranchModel.fromJson(Map<String, dynamic> json) {
    sectionMaxCapacity = json['section_maxCapacity'];
    address = json['address_id'];
    phoneNumber = json['phone_number'];
    space = json['space'];
    companyRegister = json['company_register'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phone_number'] = phoneNumber;
    data['space'] = space;
    data['company_register'] = '454';
    data['address_id'] = address;
    data['section_maxCapacity'] =sectionMaxCapacity;


    return data;
  }


}