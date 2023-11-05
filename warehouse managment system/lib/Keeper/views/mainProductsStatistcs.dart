import 'package:flutter/material.dart';
import 'package:untitled3/Keeper/views/productsStatistics.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../core/constant/const.dart';
import '../data/model/statistacs.dart';



class MainProductsStatistics extends StatefulWidget {
  const MainProductsStatistics({Key? key}) : super(key: key);

  @override
  _MainProductsStatisticsState createState() => _MainProductsStatisticsState();
}

class _MainProductsStatisticsState extends State<MainProductsStatistics>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  // 0: Days, 1: Months, 2: Years
  @override
  void initState(){
    tabController=TabController(length: 3, vsync: this);
    // GetData("http://127.0.0.1:8000/api/managers/keeper/statistics/costs/daily",Token);
    super.initState();
  }
  @override
  void dispose(){
    super.dispose();
    tabController.dispose();
  }


  List<CharModel> charList=<CharModel>[];
  Future GetData(String linkUrl, String headers) async {
    print('before curd  get//////////////////////////////////////////');
    var response = await http.get(
      Uri.parse(linkUrl),
      headers: {'Authorization': 'Bearer $headers'},
    );
    print("after curd get //////////////////////////////////");
    if (response.statusCode == 200 || response.statusCode == 201) {

      print(
          'before response get//////////////////////////////////////////////////////');
      var responseBody = await jsonDecode(response.body);
for(var data in responseBody){
  charList.add(CharModel.fromJson(data));
}

    } else {
      print("Request failed with status: ${response.statusCode}.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161a1d),

      appBar: AppBar(
        elevation: 20,
        backgroundColor: const Color(0xff161a1d),
        title: const Center(
          child: Text(
            'ProductsStatistics ',
            style: TextStyle(
              fontFamily: "DM Sans",
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1304,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10,right: 10,left: 10),
                decoration: BoxDecoration(

                    color: const Color(0xff004834),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                  TabBar(
                    controller: tabController,
                    unselectedLabelColor: Colors.white,
                    unselectedLabelStyle:   const TextStyle(
                      fontFamily: "DM Sans",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.circular(15)
                    ),
                    labelColor:Colors.black,
                     labelStyle:   const TextStyle(
                       fontFamily: "DM Sans",
                       fontWeight: FontWeight.w500,
                       fontSize: 21,
                       color: Colors.white,
                     ),
                    tabs: const [

                      Tab(
                        text: 'Days',
                      ),
                      Tab(
                        text: 'Months',

                      ),
                      Tab(
                        text: 'Years',
                      ),
                    ],

                  ),                    ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    ProductsStatistics(),
                    ProductsStatistics(),
                    ProductsStatistics()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
