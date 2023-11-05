class TableModel {
  var state;
  var dateIn;
  var inQuantity;
  var totalCost;

  TableModel({this.state, this.dateIn, this.inQuantity, this.totalCost});

  TableModel.fromJson(Map<String, dynamic> json) {
    state = json['state'];
    dateIn = json['date_in'];
    inQuantity = json['in_quantity'];
    totalCost = json['total_cost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = state;
    data['date_in'] = dateIn;
    data['in_quantity'] = inQuantity;
    data['total_cost'] = totalCost;
    return data;
  }
}