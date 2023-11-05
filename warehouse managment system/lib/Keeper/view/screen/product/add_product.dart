import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';
import 'package:untitled3/Keeper/core/constant/image_asset.dart';


import '../../../controller/product/add_product_controller.dart';
import '../../../controller/product/edit_product_controller.dart';
import '../../../core/function/validator.dart';

import '../../widget/product/custom_text_date.dart';
import '../../widget/product/custom_text_filed.dart';
import '../../widget/product/drop_down_search_category.dart';
import '../../widget/product/drop_down_search_producing_companies.dart';

class AddProduct extends GetView<AddProductController> {
  const AddProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


   Get.put(AddProductController());
    // Get.put(FormController());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Add Product"),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Get.back();
            },
          ),
          actions: [
            IconButton(
                onPressed: () {controller.scanQRCode1();}, icon: const Icon(Icons.qr_code_scanner)),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: const Color(0xff161a1d),
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(0),
                child: GetBuilder<AddProductController>(
                  builder: (controller) {
                    return Form(
                      key: controller.formState,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                // decoration: ,
                                height: 280,
                                width: 400,

                                margin: const EdgeInsets.all(2),
                                child: Card(
                                  elevation: 10,
                                  color: Colors.black,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "information of product ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      SizedBox(
                                        width: 250,
                                        child: CustomText(
                                          title: "Product Name",
                                          icon: const Icon(
                                            Icons.drive_file_rename_outline,
                                            color: Colors.white,
                                          ),
                                          keyboardType: TextInputType.text,
                                          validator: (val) {
                                            return validInput(val!, 8, '');
                                          },
                                          myController:
                                              controller.productNameController,
                                          onChanged: (String s ) {
                                            controller.name.value= s ;
                                            print("${controller.name}////////////////////////////////");
                                          },
                                        ),
                                      ),
                                      const SizedBox(height: 24),
                                      SizedBox(
                                          width: 250,
                                          child: DropDownSearchCategory()),
                                      const SizedBox(height: 16),
                                      Container(
                                          width: 400,
                                          child:
                                              DropDownSearchProducingCompanies())
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 9,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 24),
                                  child: DottedBorder(
                                    color: AppColor.color2,
                                    dashPattern: const [8, 4],
                                    strokeWidth: 2,
                                    child: Obx(
                                      () => Container(
                                        decoration: BoxDecoration(
                                          image:
                                              controller.selectedImage.value !=
                                                      null
                                                  ? DecorationImage(
                                                      image: FileImage(File(
                                                          controller
                                                              .selectedImage
                                                              .value!
                                                              .path)),
                                                      fit: BoxFit.cover,
                                                    )
                                                  : null,
                                          color: Colors.grey[600],
                                        ),
                                        height: 130,
                                        width: 120,
                                        child: Center(
                                          child: InkWell(
                                            onTap: () => controller.pickImage(),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "Add photo",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16),
                                                ),
                                                Icon(
                                                  Icons
                                                      .add_photo_alternate_outlined,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          // const SizedBox(height: 16),
                          Container(
                            height: 342,
                            width: 400,
                            margin: const EdgeInsets.all(2),
                            child: Card(
                              elevation: 10,
                              color: Colors.black,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "  Purchase information ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  const SizedBox(height: 6),
                                  const SizedBox(height: 16),
                                  CustomText(
                                    title: "weight",
                                    icon: const Icon(
                                      Icons.space_dashboard,
                                      color: Colors.white,
                                    ),
                                    keyboardType: TextInputType.number,
                                    validator: (val) {
                                      return validInput(val!, 1, '');
                                    },
                                    myController: controller.weightController,
                                    onChanged: (String s ) {
                                      controller.weight.value=s;
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  CustomText(
                                    title: "size",
                                    icon: const Icon(
                                      Icons.space_dashboard,
                                      color: Colors.white,
                                    ),
                                    keyboardType: TextInputType.number,
                                    validator: (val) {
                                      return validInput(val!, 1, '');
                                    },
                                    myController: controller.sizeController,
                                    onChanged: (String s ) {
                                      controller.size.value=s;
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  CustomText(
                                    title: "Box Quantity",
                                    icon: const Icon(
                                      Icons.category,
                                      color: Colors.white,
                                    ),
                                    keyboardType: TextInputType.number,
                                    validator: (val) {
                                      return validInput(val!, 1, '');
                                    },
                                    myController:
                                        controller.boxQuantityController,
                                    onChanged: (String s) {
                                      controller.boxQuantity.value=s;
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  CustomText(
                                    title: "Description",
                                    icon: const Icon(
                                      Icons.description,
                                      color: Colors.white,
                                    ),
                                    keyboardType: TextInputType.text,
                                    validator: (val) {
                                      return validInput(val!, 0, '');
                                    },
                                    myController:
                                        controller.descriptionController,
                                    onChanged: (String s ) {
                                      controller.description.value=s;
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(height: 24),
                          SizedBox(
                            width: 350,
                            // padding: EdgeInsets.all(20),

                            child: ElevatedButton(
                              onPressed: () {
                                controller.postData();
                                print(
                                    'llllllllllllllllllllllllllllllllllllllllllllllllllll');
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: AppColor.color2,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                'Add',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: controller.generateQRCode,
                            child: const Text('Generate QR Code'),
                          ),
                        ],
                      ),
                    );
                  },
                )),
          ),
        ),
      ),
    );
  }
}
