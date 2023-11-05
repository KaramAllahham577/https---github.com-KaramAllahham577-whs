import 'package:get/get.dart';
import 'package:untitled3/Keeper/data/datasource/remote/employee/employee_profile_data.dart';
import 'package:untitled3/Keeper/data/datasource/remote/product/show_product_data.dart';
import 'package:untitled3/Keeper/data/model/storage_location/storage_location.dart';
import 'package:untitled3/Keeper/view/screen/product/show_product.dart';

import '../../../Keeper/controller/test_controller.dart';
import '../../../Keeper/core/function/check_internet.dart';
import '../../../Keeper/data/datasource/remote/storage_location/all_sections_data.dart';
import '../../data/model/show_section_general_model.dart';
import '../../data/remote/storage_location/all_sections_data.dart';



class MainSectionGeneralController extends GetxController {
  late bool isLoading = true;
  AllSectionGeneralData allSectionData= AllSectionGeneralData(Get.find());
  late bool check = false;
  List<ShowAllSectionGeneral> availableList = <ShowAllSectionGeneral>[];
  List<ShowAllSectionGeneral> unavailableList = <ShowAllSectionGeneral>[];
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

          availableList.add(ShowAllSectionGeneral.fromJson(response));


          unavailableList.add(ShowAllSectionGeneral.fromJson(response['unavailable sections']));

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
