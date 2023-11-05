class AllSectionsModel {
  List<String>? availableSections;
  List<String>? unavailableSections;

  AllSectionsModel({this.availableSections, this.unavailableSections});

  AllSectionsModel.fromJson(Map<String, dynamic> json) {
    availableSections = json['available sections'].cast<String>();
    unavailableSections = json['unavailable sections'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['available sections'] = this.availableSections;
    data['unavailable sections'] = this.unavailableSections;
    return data;
  }
}