import 'package:get/get.dart';
import 'package:untitled3/Keeper/data/datasource/remote/employee/employee_profile_data.dart';
import 'package:untitled3/Keeper/data/datasource/remote/product/show_product_data.dart';
import 'package:untitled3/Keeper/data/model/product/table_model.dart';
import 'package:untitled3/Keeper/view/screen/product/show_product.dart';

import '../../core/class/crud.dart';
import '../../core/function/check_internet.dart';
import '../../data/datasource/remote/product/tabel.dart';
import '../../data/model/employee_modle/employee_profile.dart';
import '../../data/model/product/show_product_model.dart';

class TableController extends GetxController {
  late bool isLoading = true;
  TableData showProductData= TableData(Get.find());
  late bool check = false;
  List<TableModel> productList = <TableModel>[];

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

      isLoading = false;

        print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");

print(response);

        print("cccccccccccccccccccccccccccccccccccccccccccccc");
        for (var data in response) {
          productList.add(TableModel.fromJson(data));
        }
        print(productList);


        print("lllllllllllllllllllllllllllllllllllllllllllllll");
        update();

    } catch (e) {
      print(e);
    } finally {
      isLoading = false;
    }
  }
}
