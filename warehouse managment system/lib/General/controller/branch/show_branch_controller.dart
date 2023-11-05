import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled3/General/data/remote/branch/show_branch_data.dart';


import '../../../Keeper/data/model/branch/show_bracnh_model.dart';
import '../../data/model/categories/show_categories_model.dart';

class ShowBranchGeneralController extends GetxController {

  late bool isLoading = true;

  ShowBranchDataGeneral showBranchData= ShowBranchDataGeneral(Get.find());
  List<ShowBranchModel> branchList =<ShowBranchModel>[];

  @override
  void onInit() {
    getData();
    update();
    super.onInit();
  }

  void getData() async {
    try {
      isLoading = true;
      update();
      branchList.clear();
      var response = await showBranchData.getData();
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      print(response);
      if (true) {
        print(
            'before for//////////////////////////////////////////////////////////////');
        for(var data in response["data"]){
          branchList.add(ShowBranchModel.fromJson(data));

        }

        update();
      }
    } catch (e) {
      print(e);
    }
  }
}
