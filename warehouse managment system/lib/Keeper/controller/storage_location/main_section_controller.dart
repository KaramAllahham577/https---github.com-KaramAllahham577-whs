import 'package:get/get.dart';
import 'package:untitled3/Keeper/data/datasource/remote/employee/employee_profile_data.dart';
import 'package:untitled3/Keeper/data/datasource/remote/product/show_product_data.dart';
import 'package:untitled3/Keeper/data/model/storage_location/storage_location.dart';
import 'package:untitled3/Keeper/view/screen/product/show_product.dart';

import '../../core/class/crud.dart';
import '../../core/function/check_internet.dart';
import '../../data/datasource/remote/storage_location/all_sections_data.dart';
import '../../data/model/employee_modle/employee_profile.dart';
import '../../data/model/product/show_product_model.dart';
import '../test_controller.dart';

class MainSectionController extends GetxController {
  late bool isLoading = true;
  AllSectionData allSectionData= AllSectionData(Get.find());
  late bool check = false;
  List availableList = [];
  List unavailableList = [];
  final box=Get.put(StorageController());
  @override
  void onInit() {
    box.storage("sec1",'');
    super.onInit();
    getData();
  }

  void getData() async {
    try {
      availableList.clear();
      unavailableList.clear();
      check = !await checkInternet();
      update();

      print(';;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;');
      isLoading = true;
      var response = await allSectionData.getData();
      print('after response1111111111111111111111111111111111111');

      isLoading = false;
      if (true) {
        print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
        print(response['available sections']);


        print("cccccccccccccccccccccccccccccccccccccccccccccc");
        for (var data in response['available sections']) {
          availableList.add(data);
        }
   for (var data in response['unavailable sections']) {
          unavailableList.add(data);
        }
   print(unavailableList);
   print(availableList);


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
