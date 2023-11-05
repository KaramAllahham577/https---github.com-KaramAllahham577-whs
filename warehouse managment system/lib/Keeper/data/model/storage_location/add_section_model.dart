class AddSectionModel {
  String? mainSection;
  String? section;
  String? branchId;
  String? availableQuantity;
  String? unavailableQuantity;

  AddSectionModel(
      {required this.mainSection,
      required this.section,
      required this.branchId,
      required this.availableQuantity,
      required this.unavailableQuantity});

  AddSectionModel.fromJson(Map<String, dynamic> json) {
    mainSection = json['category_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['main_section'] = mainSection;
    data['section'] = section;
    data['branch_id'] = branchId;
    data['available_quantity'] = availableQuantity;
    data['unavailable_quantity'] = unavailableQuantity;
    // ignore: cast_from_null_always_fails

    return data;
  }
}
