import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/categories/show_categories_controller.dart';
import 'package:untitled3/Keeper/controller/storage_location/section_location_controller.dart';
import 'package:untitled3/Keeper/core/constant/image_asset.dart';
import 'package:untitled3/Keeper/data/datasource/remote/categroies/add_categories_data.dart';

import 'main_section_controller.dart';
import '../test_controller.dart';
import '../../core/constant/app_color.dart';
import '../../data/model/storage_location/add_section_model.dart';
import '../../data/datasource/remote/storage_location/add_section_data.dart';



class AddLocationController extends GetxController {
  late TextEditingController mainSection;
  late TextEditingController section;
  late TextEditingController unavailableQuantity;
  late TextEditingController availableQuantity;

  bool isDone = false;
  GlobalKey<FormState> formState = GlobalKey();
  AddSectionData addSectionData = AddSectionData(Get.find());

  SectionLocationController sectionLocationController =
  Get.put(SectionLocationController());
  final box=Get.put(StorageController());

  postData() async {

    if(formState.currentState!.validate()){
      try {
        AddSectionModel add =
        AddSectionModel(mainSection: box.reade("sec1"), section: section.text, branchId: '1', availableQuantity: availableQuantity.text, unavailableQuantity: unavailableQuantity.text);

        var response = await addSectionData.postData(add.toJson());

        update();
        print(response);


        if (response =="${box.reade("sec1")}-${section.text}" )
        {

          return Get.defaultDialog(
              titleStyle: const TextStyle(color: Colors.white),

              backgroundColor: AppColor.backGround,
              content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [Image.asset(ImageAsset.trueIcon)],
                ),
              ),
              title: " Added successfully ",
              textCancel: "Done",
              onCancel: () {

                sectionLocationController.getData();


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
                sectionLocationController.getData();
                Get.back();
              });
        }
      } catch (e) {
        throw Exception(e);
      }
    }else{

    }
  }

  @override
  void onInit() {
    mainSection = TextEditingController();

    section = TextEditingController();
    availableQuantity = TextEditingController();
    unavailableQuantity = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    mainSection.dispose();
    section.dispose();
    availableQuantity.dispose();
    unavailableQuantity.dispose();

    super.dispose();
  }
}
