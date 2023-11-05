import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:untitled3/Keeper/controller/product/edit_product_controller.dart';
import 'package:untitled3/Keeper/controller/product/product_details_controller.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';
import 'package:untitled3/Keeper/view/widget/product/custom_text_date.dart';
import 'package:untitled3/Keeper/view/widget/product/drop_down_search_product.dart';

import '../../../../Keeper/controller/product/add_product_branch_controller.dart';
import '../../../../Keeper/controller/test_controller.dart';
import '../../../../Keeper/core/function/validator.dart';
import '../../../../Keeper/view/widget/product/custom_text_filed.dart';


class AddProductBranchGeneral2 extends StatelessWidget {
  const AddProductBranchGeneral2({super.key});

  @override
  Widget build(BuildContext context) {
    StorageController box =Get.put(StorageController());

    Get.put(AddProductBranchController());
   final cont= Get.put(ProductDetailsController());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Add Product"),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              cont.getData();
              Get.back();
            },
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: const Color(0xff161a1d),
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: GetBuilder<AddProductBranchController>(
                  builder: (controller) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 24),
                        CustomText(
                          title: "Price",
                          icon: const Icon(
                            Icons.monetization_on,
                            color: Colors.white,
                          ),
                          keyboardType: TextInputType.number,
                          validator: (val) {
                            return validInput(val!, 8, '');
                          },
                          myController: controller.priceController,
                          onChanged: (String) {},
                        ),
                        const SizedBox(height: 16),
                        CustomText(
                          title: 'Quantity',
                          icon: const Icon(
                            Icons.category_outlined,
                            color: Colors.white,
                          ),
                          keyboardType: TextInputType.number,
                          validator: (val) {
                            return validInput(val!, 1, '');
                          },
                          myController: controller.quantityController,
                          onChanged: (String) {},
                        ),

                        const SizedBox(height: 16),

                        const SizedBox(height: 16),
                        CustomText(
                          title: "Buying Cost",
                          icon: const Icon(
                            Icons.monetization_on,
                            color: Colors.white,
                          ),
                          keyboardType: TextInputType.number,
                          validator: (val) {
                            return validInput(val!, 1, '');
                          },
                          myController: controller.buyingCosController,
                          onChanged: (String) {},
                        ),
                        const SizedBox(height: 16),
                        CustomTextDate(
                          title: "Production Data",
                          icon: const Icon(
                            Icons.date_range,
                            color: Colors.white,
                          ),
                          keyboardType: TextInputType.text,
                          validator: (val) {
                            return validInput(val!, 8, '');
                          },
                          myController: controller.productionDataController,
                        ),
                        const SizedBox(height: 16),
                        CustomTextDate(
                          title: "Expiry Data",
                          icon: const Icon(
                            Icons.date_range,
                            color: Colors.white,
                          ),
                          keyboardType: TextInputType.text,
                          validator: (val) {
                            return validInput(val!, 8, '');
                          },
                          myController: controller.expiryDataController,
                        ),
                        const SizedBox(height: 16),
                        CustomTextDate(
                          title: "Date In",
                          icon: const Icon(
                            Icons.date_range,
                            color: Colors.white,
                          ),
                          keyboardType: TextInputType.text,
                          validator: (val) {
                            return validInput(val!, 8, '');
                          },
                          myController: controller.dateInController,
                        ),
                        const SizedBox(height: 16),
                        const SizedBox(height: 16),
                        CustomText(
                          title: "Purchase Number ",
                          icon: const Icon(
                            Icons.date_range,
                            color: Colors.white,
                          ),
                          keyboardType: TextInputType.text,
                          validator: (val) {
                            return validInput(val!, 2, '');
                          },
                          myController: controller.purchaseNumberController,
                          onChanged: (String) {},
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                          width: 350,
                          // padding: EdgeInsets.all(20),

                          child: ElevatedButton(
                            onPressed: () {
                              print(box.reade("idProduct"));
                              controller.postData();
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: AppColor.color2,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Save',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                )),
          ),
        ),
      ),
    );
  }
}
