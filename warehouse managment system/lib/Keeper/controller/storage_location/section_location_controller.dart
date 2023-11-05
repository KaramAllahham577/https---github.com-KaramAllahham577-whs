import 'package:get/get.dart';
import 'package:untitled3/Keeper/data/datasource/remote/employee/employee_profile_data.dart';
import 'package:untitled3/Keeper/data/datasource/remote/product/show_product_data.dart';
import 'package:untitled3/Keeper/data/model/storage_location/storage_location.dart';
import 'package:untitled3/Keeper/view/screen/product/show_product.dart';

import '../../core/class/crud.dart';
import '../../core/function/check_internet.dart';
import '../../data/datasource/remote/storage_location/all_sections_data.dart';
import '../../data/datasource/remote/storage_location/section_location_data.dart';
import '../../data/model/employee_modle/employee_profile.dart';
import '../../data/model/product/show_product_model.dart';
import '../../data/model/storage_location/section_location.dart';
import '../test_controller.dart';

class SectionLocationController extends GetxController {
  late bool isLoading = true;
  SectionLocationData allSectionData= SectionLocationData(Get.find());
  late bool check = false;
  List<sectionLocationModel> availableList = <sectionLocationModel>[];


  final box=Get.put(StorageController());
  @override
  void onInit() {

    super.onInit();
    getData();
  }

  void getData() async {
    try {
      availableList.clear();
      check = !await checkInternet();
      update();

      print(';;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;');
      isLoading = true;
      var response = await allSectionData.getData();
      print('after response1111111111111111111111111111111111111');

      isLoading = false;
      if (true) {
        print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");



        print("cccccccccccccccccccccccccccccccccccccccccccccc");
        print(response);
        for (var data in response) {
          availableList.add(sectionLocationModel.fromJson(data));
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
