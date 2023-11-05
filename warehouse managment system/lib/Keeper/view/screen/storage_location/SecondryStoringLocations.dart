import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/storage_location/section_location_controller.dart';
import 'package:untitled3/Keeper/view/widget/storage_location/secondryStoringLocationsCard.dart';

import '../../../controller/storage_location/add_storage_controller.dart';
import '../../../controller/test_controller.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/function/validator.dart';
import '../../../controller/storage_location/section_controller.dart';
import '../../widget/auth/custom_text_field.dart';




class SecondaryStoringLocations extends GetView<SectionLocationController> {
  const SecondaryStoringLocations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(AddLocationController());
    Get.put(SectionLocationController());
    final box=Get.put(StorageController());
    return Scaffold(
      backgroundColor: const Color(0xFF161A1D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF161A1D),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title:  Text(
          'Location ${box.reade("sec1")}',
          style: TextStyle(
            fontFamily: "DM Sans",
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 411,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xFF161A1D),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Opacity(
                      opacity: 0,
                      child: Container(
                        width: 90,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Colors.transparent, // Change to your color
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: Color(0xFF6A040F),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'Unavailable',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Readex Pro',
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0,
                      child: Container(
                        width: 20,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Colors.transparent, // Change to your color
                        ),
                      ),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: Color(0xFF004834),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'Available',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Readex Pro',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            GetBuilder<SectionLocationController>(builder: (controller){
              return   Container(
                width: 496,
                height: 622,
                decoration: const BoxDecoration(
                  color: Color(0xFF161A1D),
                ),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: controller.availableList.length, // Number of items in the list
                  itemBuilder: (context, index) {
                    return SecondaryStoringLocationsCard(
                    name: controller.availableList[index].locationNum!,
                      totalQuantity: 15000,
                      availableQuantity: controller.availableList[index].availableQuantity!,
                      unavailableQuantity: 15000,
                    );
                  },
                ),
              );
            })
            ],
          ),
        ),
      ),
        floatingActionButton: GetBuilder<AddLocationController>(builder: (controller){
          return FloatingActionButton(onPressed: () {  Get.defaultDialog(
            actions: [
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        AppColor.color2), // Set the background color
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    controller.postData();
                    Get.back();

                  },
                  child: const Text(
                    "Add",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ],
            backgroundColor: AppColor.backGround,
            content: Form(
              key: controller.formState,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [

                    CustomTextField(
                        label: "name ",
                        hint: "enter section",
                        icon: const Icon(Icons.factory),
                        textInputType: TextInputType.streetAddress,
                        validator: (val) {
                          return validInput(val!, 1, '');
                        },
                        myController: controller.section),
                    CustomTextField(
                        label: "name ",
                        hint: "enter Available Quantity",
                        icon: const Icon(Icons.category),
                        textInputType: TextInputType.streetAddress,
                        validator: (val) {
                          return validInput(val!, 3, '');
                        },
                        myController: controller.availableQuantity),
                    CustomTextField(
                        label: "name ",
                        hint: "enter Unavailable Quantity",
                        icon: const Icon(Icons.category),
                        textInputType: TextInputType.streetAddress,
                        validator: (val) {
                          return validInput(val!, 3, '');
                        },
                        myController: controller.unavailableQuantity),
                  ],
                ),
              ),
            ),
            title: " Add Section ",
            titleStyle: const TextStyle(color: Colors.white),
          );},
            child: Icon(Icons.add),);
        },)
    );
  }
}