import 'package:get/get.dart';
import 'package:untitled3/Keeper/data/datasource/remote/employee/employee_profile_data.dart';
import 'package:untitled3/Keeper/data/datasource/remote/product/show_product_data.dart';
import 'package:untitled3/Keeper/data/model/order/oreder_products_model.dart';
import 'package:untitled3/Keeper/data/model/order/show_order_model.dart';
import 'package:untitled3/Keeper/view/screen/product/show_product.dart';

import '../../data/remote/order/order_products_data.dart';



class OrderProductGeneralController extends GetxController {
  late bool isLoading = true;
  OrderProductsGeneralData orderProductsData= OrderProductsGeneralData(Get.find());

  List<OrderProductsModel> orderProductList = <OrderProductsModel>[];

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  void getData() async {
    try {

      update();

      print(';;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;');
      isLoading = true;
      var response = await orderProductsData.getData();

      print('after response1111111111111111111111111111111111111');
      isLoading = false;
      if (true) {
        print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");

        for (var data in response) {
orderProductList.add(OrderProductsModel.fromJson(data));
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
