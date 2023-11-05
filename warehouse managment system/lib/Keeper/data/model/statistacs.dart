class CharModel {
  String? date;
  int? totalCost;

  CharModel({this.date, this.totalCost});

  CharModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    totalCost = json['total_cost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['total_cost'] = this.totalCost;
    return data;
  }
}