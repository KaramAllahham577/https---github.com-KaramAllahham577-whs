import 'package:get/get.dart';
import 'package:untitled3/Keeper/data/datasource/remote/employee/employee_profile_data.dart';
import 'package:untitled3/Keeper/data/datasource/remote/product/show_product_data.dart';
import 'package:untitled3/Keeper/view/screen/product/show_product.dart';

import '../../../Keeper/core/function/check_internet.dart';
import '../../../Keeper/data/model/product/show_product_model.dart';
import '../../data/remote/product/show_product_data.dart';



class ShowProductGeneralController extends GetxController {
  late bool isLoading = true;
  ShowProductGeneralData showProductData= ShowProductGeneralData(Get.find());
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
      productList.clear();
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
