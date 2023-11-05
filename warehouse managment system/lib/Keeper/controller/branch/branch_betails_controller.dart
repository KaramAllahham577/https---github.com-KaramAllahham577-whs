import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



import '../../core/class/crud.dart';
import '../../data/datasource/remote/branch/branch-details-data.dart';
import '../../data/datasource/remote/categroies/show_categories_data.dart';
import '../../data/model/branch/branch_details_model.dart';
import '../../data/model/categories/show_categories_model.dart';

class BranchDetailsController extends GetxController {
  var branchList = < BranchDetailsModel>[].obs;
  late bool isLoading = true;
  final Rx<BranchDetailsModel?> branchInfo = Rx<BranchDetailsModel?>(null);
  final scrollController = ScrollController();

  double get scrollOffset => scrollController.offset;

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  BranchDetailsData branchDetailsData= BranchDetailsData(Get.find());
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
      var response = await branchDetailsData.getData();
      print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (true) {
        print('before for//////////////////////////////////////////////////////////////');


          branchInfo.value=BranchDetailsModel.fromJson(response);

        update();
      }
    } catch (e) {
      print(e);
    }
  }
}
