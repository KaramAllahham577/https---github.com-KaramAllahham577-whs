import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/test_controller.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';
import 'package:untitled3/Keeper/view/widget/storage_location/storingLocationsCard.dart';

import '../../../controller/storage_location/add_storage_controller.dart';
import '../../../controller/storage_location/main_section_controller.dart';
import '../../../core/function/validator.dart';
import '../../widget/auth/custom_text_field.dart';
import '../../widget/custom_speeddial.dart';
import 'SecondryStoringLocations.dart';

class StoringLocations extends StatelessWidget {
  const StoringLocations({super.key});

  @override
  Widget build(BuildContext context)
{
    final box=Get.put(StorageController());
    AppColor a = AppColor();
    Get.put(MainSectionController());
    Get.put(AddStorageLocationController());

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
          onPressed: () {Get.back();},
        ),
        title: const Text(
          'Main section ',
          style: TextStyle(
            fontFamily: 'Outfit',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
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
                          fontSize: 20),
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
                      'available',
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
            GetBuilder<MainSectionController>(builder: (controller) {
              if (controller.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Expanded(
                  child: Container(
                    width: 496,
                    decoration: const BoxDecoration(
                      color: Color(0xFF161A1D),
                    ),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: controller.availableList.length +
                          controller.unavailableList.length,
                      // Replace with your actual item count
                      itemBuilder: (BuildContext context, int index) {
                        if (index < controller.availableList.length) {
                          print(index);
                          return GestureDetector(
                            onTap: () {
                              Get.to(const SecondaryStoringLocations());


                              box.storage("sec", controller.availableList[index]);

                              box.storage("sec1", controller.availableList[index]);
                              print(controller.availableList[index]);
                              print("/////////////////////////////////////////////${box.reade("sec1")}");
                            },
                            child: StoringLocationsCard(
                              name:
                                  ' ${  controller.availableList[index]}',
                              totalQuantity: 1,
                              // Replace with actual total quantity
                              borderColor: const Color(0xFF004834),
                            ),
                          );
                        } else {
                          final i = index - controller.availableList.length;
                          print(i);
                          final section = controller.unavailableList[i];
                          return GestureDetector(
                            onTap: () {
                              Get.to(const SecondaryStoringLocations());
                              box.storage("sec", controller.unavailableList[i]);
                              box.storage("sec1",'');
                              box.storage("sec1", controller.unavailableList[i]);
                              print(controller.unavailableList[i]);
                            },
                            child: StoringLocationsCard(
                              name: ' $section',
                              totalQuantity: 1,
                              // Replace with actual total quantity
                              borderColor: const Color(0xFF6A040F),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                );
              }
            })
          ],
        ),
      ),
        floatingActionButton: GetBuilder<AddStorageLocationController>(builder: (controller){
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
                        label: "Main Section ",
                        hint: "enter Main Section",
                        icon:  Icon(Icons.factory),
                        textInputType: TextInputType.streetAddress,
                        validator: (val) {
                          return validInput(val!, 1, '');
                        },
                        myController: controller.mainSection),
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
            title: " Add Main Section ",
            titleStyle: const TextStyle(color: Colors.white),
          );},
            child: Icon(Icons.add),);
        },)

    );
  }
}
