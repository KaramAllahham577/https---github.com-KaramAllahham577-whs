import 'package:get/get.dart';
import 'package:untitled3/Keeper/data/datasource/remote/employee/employee_profile_data.dart';
import 'package:untitled3/Keeper/data/datasource/remote/product/show_product_data.dart';
import 'package:untitled3/Keeper/data/model/order/show_order_model.dart';
import 'package:untitled3/Keeper/view/screen/product/show_product.dart';

import '../../core/class/crud.dart';
import '../../core/function/check_internet.dart';
import '../../data/datasource/remote/order/show_order_data.dart';
import '../../data/model/employee_modle/employee_profile.dart';
import '../../data/model/product/show_product_model.dart';

class ShowOrderController extends GetxController {
  late bool isLoading = true;
  ShowOrderData showOrderData= ShowOrderData(Get.find());
  late bool check = false;
  List<ShowOrederModel> OrderList = <ShowOrederModel>[];

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
      var response = await showOrderData.getData();

      print('after response1111111111111111111111111111111111111');
      isLoading = false;
      if (true) {
        print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");



        print("cccccccccccccccccccccccccccccccccccccccccccccc");
        for (var data in response) {
          OrderList.add(ShowOrederModel.fromJson(data));
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
