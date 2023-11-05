import 'package:get/get.dart';
import 'package:untitled3/General/data/remote/product/product_details_data.dart';
import 'package:untitled3/Keeper/data/datasource/remote/employee/employee_profile_data.dart';
import 'package:untitled3/Keeper/data/datasource/remote/product/product_details_data.dart';

import '../../../Keeper/core/function/check_internet.dart';
import '../../../Keeper/data/model/product/product_details_models.dart';
import '../../data/model/product_details.dart';


class ProductDetailsGeneralController extends GetxController {
  late bool isLoading = true;

  late bool check = false;

  final Rx<ProductsDetailsGeneralModel?> productDetails =
      Rx<ProductsDetailsGeneralModel?>(null);
  ProductDetailsGeneralData productDetailsData = ProductDetailsGeneralData(Get.find());

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
      print(response);

      print('after response1111111111111111111111111111111111111');
      isLoading = false;
      if (response["status"] == 200) {


        print("cccccccccccccccccccccccccccccccccccccccccccccc");

        productDetails.value = ProductsDetailsGeneralModel.fromJson(response);
        print(productDetails.value!.data!.boxQuantity!);
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
