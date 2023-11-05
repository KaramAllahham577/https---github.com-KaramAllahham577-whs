class ShowAllSectionGeneral {
  List<AvailableSections>? availableSections;
  List<UnavailableSections>? unavailableSections;

  ShowAllSectionGeneral({this.availableSections, this.unavailableSections});

  ShowAllSectionGeneral.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      availableSections = <AvailableSections>[];
      json['available sections'].forEach((v) {
        availableSections!.add(new AvailableSections.fromJson(v));
      });
    }
    if (json['unavailable sections'] != null) {
      unavailableSections = <UnavailableSections>[];
      json['unavailable sections'].forEach((v) {
        unavailableSections!.add(new UnavailableSections.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.availableSections != null) {
      data['available sections'] =
          this.availableSections!.map((v) => v.toJson()).toList();
    }
    if (this.unavailableSections != null) {
      data['unavailable sections'] =
          this.unavailableSections!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AvailableSections {
  String? locationNum;
  int? availableQuantity;
  int? unavailableQuantity;

  AvailableSections(
      {this.locationNum, this.availableQuantity, this.unavailableQuantity});

  AvailableSections.fromJson(Map<String, dynamic> json) {
    locationNum = json['locationNum'];
    availableQuantity = json['available_quantity'];
    unavailableQuantity = json['unavailable_quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['locationNum'] = this.locationNum;
    data['available_quantity'] = this.availableQuantity;
    data['unavailable_quantity'] = this.unavailableQuantity;
    return data;
  }
}
class UnavailableSections {
  String? locationNum;
  int? availableQuantity;
  int? unavailableQuantity;

  UnavailableSections(
      {this.locationNum, this.availableQuantity, this.unavailableQuantity});

  UnavailableSections.fromJson(Map<String, dynamic> json) {
    locationNum = json['locationNum'];
    availableQuantity = json['available_quantity'];
    unavailableQuantity = json['unavailable_quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['locationNum'] = this.locationNum;
    data['available_quantity'] = this.availableQuantity;
    data['unavailable_quantity'] = this.unavailableQuantity;
    return data;
  }
}