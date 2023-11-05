import 'package:get/get.dart';
import 'package:untitled3/Keeper/data/datasource/remote/employee/employee_profile_data.dart';
import 'package:untitled3/Keeper/data/datasource/remote/product/product_details_data.dart';

import '../../core/class/crud.dart';
import '../../core/function/check_internet.dart';
import '../../data/model/employee_modle/employee_profile.dart';
import '../../data/model/product/product_details_models.dart';

class ProductDetailsController extends GetxController {
  late bool isLoading = true;

  late bool check = false;

  final Rx<ProductDetailsModels?> productDetails =
      Rx<ProductDetailsModels?>(null);
  ProductDetailsData productDetailsData = ProductDetailsData(Get.find());

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
      var response = await productDetailsData.getData();

      print('after response1111111111111111111111111111111111111');
      print(response);
      isLoading = false;
      if (response["status code"] == 200) { 


        print("cccccccccccccccccccccccccccccccccccccccccccccc");

        productDetails.value = ProductDetailsModels.fromJson(response);
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
