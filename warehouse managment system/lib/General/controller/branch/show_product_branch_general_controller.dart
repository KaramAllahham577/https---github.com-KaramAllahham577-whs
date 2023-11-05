import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/model/branch/show_product_branch_general_modle.dart';
import '../../data/model/categories/show_categories_model.dart';
import '../../data/remote/branch/show_product_branch_general_data.dart';
import '../../data/remote/categroies/show_categories_data_general.dart';




class ShowProductBranchControllerGeneral extends GetxController {
  List<ShowProductBranchGeneralModel> productList =<ShowProductBranchGeneralModel> [];
  late bool isLoading = true;


  ShowProductBranchDataGeneral showProductBranchDataGeneral = ShowProductBranchDataGeneral(Get.find());
  @override
  void onInit() {

    getData();
    super.onInit();
  }
  int j=0;
  List? test;

  void getData() async {
    try {
      productList.clear();

      isLoading = true;
      update();
      var response = await showProductBranchDataGeneral.getData();
      print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;

      print(response);

      if(response.isEmpty){}
else {
        for (var data in response) {
          productList.add(ShowProductBranchGeneralModel.fromJson(data));


          update();
        }
      }} catch (e) {
      print(e);
    }
  }
}
