import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/model/categories/show_categories_model.dart';
import '../../data/model/companies/show_conpanies_model.dart';
import '../../data/remote/categroies/show_categories_data_general.dart';
import '../../data/remote/companies/show_companies.dart';




class ShowCompaniesControllerGeneral extends GetxController {
  List<ShowCompaniesModel> companiesList =<ShowCompaniesModel> [];
  final Rx<ShowCompaniesModel?> companies =
  Rx<ShowCompaniesModel?>(null);
  late bool isLoading = true;


  ShowCompaniesGeneral showCompaniesGeneral = ShowCompaniesGeneral(Get.find());
  @override
  void onInit() {

    getData();
    super.onInit();
  }
  int j=0;
  List? test;

  void getData() async {
    try {


      isLoading = true;
      update();
      var response = await showCompaniesGeneral.getData();
      print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;


        for (var data in response["companies"]) {
          companiesList.add(ShowCompaniesModel.fromJson(data));




        update();
      }
    } catch (e) {
      print(e);
    }
  }
}
