class sectionLocationModel {
  String? locationNum;
  int? availableQuantity;

  sectionLocationModel({this.locationNum, this.availableQuantity});

  sectionLocationModel.fromJson(Map<String, dynamic> json) {
    locationNum = json['locationNum'];
    availableQuantity = json['available_quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['locationNum'] = locationNum;
    data['available_quantity'] = availableQuantity;
    return data;
  }
}