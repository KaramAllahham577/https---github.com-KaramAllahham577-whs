import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/class/crud.dart';

import '../../core/function/check_internet.dart';
import '../../data/datasource/remote/branches_data/branches_view_data.dart';
import '../../data/model/branches_model.dart';

class BranchesController extends GetxController {
  BranchesData branchesData = BranchesData(Get.find());
  late bool isLoading = true;
  late bool  check = false;
  var branchesList = <BranchesModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    getData();
  }


  void getData() async {
    try {
      check= ! await checkInternet () ;
      update();
      branchesList.clear();
      print(';;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;');
      isLoading=true;
      var response = await branchesData.getData();
      isLoading=false;
      if(true){


      for (var data in response) {
        branchesList.add(BranchesModel.fromJson(data));
      }
      update();}
    } catch (e) {
      print(e);

    } finally {
      isLoading=false;
    }
  }
}
