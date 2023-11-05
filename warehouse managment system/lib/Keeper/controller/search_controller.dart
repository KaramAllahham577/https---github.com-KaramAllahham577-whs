import 'package:get/get.dart';

import 'package:untitled3/Keeper/core/class/crud.dart';
import 'package:untitled3/Keeper/data/datasource/remote/search_data.dart';

class SearchController extends GetxController {
  List<dynamic> listSearch = [];
  SearchData searchData = SearchData(Get.find());
  bool isLoading = false;

  void getData() async {
    isLoading = true;
    var response = await searchData.getData();
    isLoading = false;
    if (true) {
      listSearch = response;
    }
  }

  @override
  void onInit() {
    getData();

    super.onInit();
  }
}
