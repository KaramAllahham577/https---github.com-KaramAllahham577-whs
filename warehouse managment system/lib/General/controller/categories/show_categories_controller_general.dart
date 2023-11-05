import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/model/categories/show_categories_model.dart';
import '../../data/remote/categroies/show_categories_data_general.dart';




class ShowCategoriesControllerGeneral extends GetxController {
  List<ShowCategoriesModelGeneral> categoriesList =<ShowCategoriesModelGeneral> [];
  late bool isLoading = true;


  ShowCategoriesDataGeneral categoriesData = ShowCategoriesDataGeneral(Get.find());
  @override
  void onInit() {

    getData();
    super.onInit();
  }
  int j=0;
List? test;

  void getData() async {
    try {
      categoriesList.clear();

      isLoading = true;
      update();
      var response = await categoriesData.getData();
      print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status code"] == 200) {

        for (var data in response["data"]) {
          categoriesList.add(ShowCategoriesModelGeneral.fromJson(data));

        }


        update();
      }
    } catch (e) {
      print(e);
    }
  }
}
