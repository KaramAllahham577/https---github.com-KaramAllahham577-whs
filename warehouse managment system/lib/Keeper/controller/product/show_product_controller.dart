import 'package:get/get.dart';
import 'package:untitled3/Keeper/data/datasource/remote/employee/employee_profile_data.dart';
import 'package:untitled3/Keeper/data/datasource/remote/product/show_product_data.dart';
import 'package:untitled3/Keeper/view/screen/product/show_product.dart';

import '../../core/class/crud.dart';
import '../../core/function/check_internet.dart';
import '../../data/model/employee_modle/employee_profile.dart';
import '../../data/model/product/show_product_model.dart';

class ShowProductController extends GetxController {
  late bool isLoading = true;
  ShowProductData showProductData= ShowProductData(Get.find());
  late bool check = false;
   List<ShowProductModels> productList = <ShowProductModels>[];

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  void getData() async {
    try {
      check = !await checkInternet();
      update();

      print(';;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;');
      isLoading = true;
      var response = await showProductData.getData();
      print('after response1111111111111111111111111111111111111');
      print(response["status code"]);
      isLoading = false;
      if (response["status code"] == 200) {
        print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
        print(response["status code"]);


        print("cccccccccccccccccccccccccccccccccccccccccccccc");
        for (var data in response['data']) {
          productList.add(ShowProductModels.fromJson(data));
        }


        print("lllllllllllllllllllllllllllllllllllllllllllllll");
        update();
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading = false;
    }
  }
}
