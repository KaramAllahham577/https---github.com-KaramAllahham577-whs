import 'package:flutter/material.dart';

class CircularChartData {
  static List<Data> data =[
    Data(color:Colors.blue ,name: 'Viper',percent: 40),
    Data(color:Colors.orange ,name: 'Skeleton',percent: 30),
    Data(color:Colors.blue ,name: 'Scouts',percent: 15),
    Data(color:Colors.blue ,name: 'Lipton',percent: 15),
  ];

}

class Data {
  late final String? name ;
  late final double? percent ;
  late final Color?  color ;
  Data({this.name,this.color,this.percent});
}