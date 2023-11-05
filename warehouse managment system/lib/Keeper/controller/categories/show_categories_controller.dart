import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


import '../../core/class/crud.dart';
import '../../data/datasource/remote/categroies/show_categories_data.dart';
import '../../data/model/categories/show_categories_model.dart';

class ShowCategoriesController extends GetxController {
  List<ShowCategoriesModel> categoriesList =<ShowCategoriesModel> [];
  late bool isLoading = true;


  ShowCategoriesData categoriesData = ShowCategoriesData(Get.find());
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
          categoriesList.add(ShowCategoriesModel.fromJson(data));

        }


        update();
      }
    } catch (e) {
      print(e);
    }
  }
}
