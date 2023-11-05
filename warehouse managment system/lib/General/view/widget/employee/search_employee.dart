import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/General/view/screen/employee/employee_profile.dart';
import 'package:untitled3/Keeper/controller/search_controller.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';
import 'package:untitled3/Keeper/data/model/employee_modle/show_employee_model.dart';
import 'package:untitled3/Keeper/view/widget/employee/custom_grid.dart';

import '../../../../Keeper/controller/test_controller.dart';
import '../../../../Keeper/view/screen/employee/employee_profile.dart';
import '../../../../Keeper/view/widget/employee/card_emp.dart';



class SearchEmployeeBranchGeneral extends SearchDelegate<String> {

  final box = Get.put(StorageController());



  SearchEmployeeBranchGeneral({required this.search,});

  final List search;

  @override
  ThemeData appBarTheme(BuildContext context) {

    final ThemeData theme = Theme.of(context);

    return theme.copyWith(
      hintColor: Colors.white70,
      textTheme: const TextTheme(titleLarge: TextStyle(color: Colors.white,fontSize: 20)),
      appBarTheme: AppBarTheme(
        // brightness: colorScheme.brightness,
        backgroundColor: Colors.grey[900],
        iconTheme: theme.primaryIconTheme.copyWith(color: Colors.grey),


      ),
      inputDecorationTheme: searchFieldDecorationTheme ??
          InputDecorationTheme(
            hintStyle: searchFieldStyle ?? theme.inputDecorationTheme.hintStyle,
            border: InputBorder.none,
          ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = search
        .where((item) => item.employeeName
        .toString()
        .toLowerCase()
        .contains(query.toLowerCase()))
        .toList();
    return Container  (
      color: AppColor.backGround,
      child: GridView.builder(
        itemCount: suggestionList.length,
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.75,
          // childAspectRatio: ,
        ),
        itemBuilder: (context, index) {

          final item = suggestionList[index];
          return InkWell(
            child: CardEmp(position: item.position, employeeName: item.employeeName!,),
            onTap: (){
              box.storage("idEmpG", item.id) ;
              Get.to( EmployeeProfileGeneral());
            },
          );
        },
      ),
    );
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        print(search);
        close(context, '');
      },
    );
  }

  @override
  String get searchFieldLabel => 'Search';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          if(query.isEmpty){
            close(context, '');
          }else{
            query = '';
          }

        },
      ),
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    List suggestionList = search
        .where((item) => item.employeeName
        .toString()
        .toLowerCase()
        .contains(query.toLowerCase()))
        .toList();
    return Container(
      color: AppColor.backGround,
      child: GridView.builder(
        itemCount: suggestionList.length,
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.75,
          // childAspectRatio: ,
        ),
        itemBuilder: (context, index) {

          final item = suggestionList[index];
          return  InkWell(
            child: CardEmp(position: item.position, employeeName: item.employeeName!,),
            onTap: (){
              box.storage("idEmp", item.employeeId) ;
              Get.to( EmployeeProfile());
            },
          );
        },
      ),
    );
  }
}
