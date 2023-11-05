    import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/General/controller/branch/show_branch_controller.dart';
import 'package:untitled3/Keeper/controller/test_controller.dart';
import 'package:untitled3/Keeper/core/constant/image_asset.dart';
import 'package:untitled3/Keeper/data/datasource/remote/branches_data/add_branch_data.dart';
import 'package:untitled3/Keeper/data/model/add_branch_model.dart';


class AddBranchController extends GetxController {

  late TextEditingController address;

  late TextEditingController phoneNumber;
  late TextEditingController space;
  late TextEditingController spaceSection ;
  late TextEditingController companyRegister;
  bool isDone = false;
  AddBranchData addBranchData = AddBranchData(Get.find());
  ShowBranchGeneralController branchesController = Get.put(ShowBranchGeneralController());
final box =Get.put(StorageController());
  postData() async {
    try {
      AddBranchModel add = AddBranchModel(

          address: "${box.reade("iddes")}",
          phoneNumber: phoneNumber.text,
          space: space.text,
          companyRegister: companyRegister.text, sectionMaxCapacity: '');

      var response = await addBranchData.postData(add.toJson());



      update();
      print(
          's................................................................. before response post ');

      if (true) {

        return Get.defaultDialog(
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [Image.asset(ImageAsset.trueIcon)],
              ),
            ),
            title: " Added successfully ",
            textCancel: "Done",
            onCancel: () {
              branchesController.getData();



            });
      } else {
        return Get.defaultDialog(
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [Text("Fail")],
              ),
            ),
            title: " fail",
            textCancel: "Done",
            onCancel: () {
              branchesController.getData();

            });
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  void onInit() {
spaceSection=TextEditingController();
    companyRegister = TextEditingController();
    space = TextEditingController();
    phoneNumber = TextEditingController();
    address = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {

    spaceSection.dispose();
    companyRegister.dispose();
    space.dispose();
    phoneNumber.dispose();
    address.dispose();
    super.dispose();
  }
}
