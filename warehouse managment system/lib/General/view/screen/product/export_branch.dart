import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../Keeper/controller/product/edit_product_controller.dart';
import '../../../../Keeper/core/constant/app_color.dart';
import '../../../../Keeper/core/constant/image_asset.dart';
import '../../../../Keeper/core/function/validator.dart';
import '../../../../Keeper/view/widget/product/custom_text_date.dart';
import '../../../../Keeper/view/widget/product/custom_text_filed.dart';
import '../../../../Keeper/view/widget/product/export.dart';



class ExportBranchGeneral extends StatelessWidget {
  const ExportBranchGeneral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Export"),
        centerTitle: true
        ,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xff161a1d),
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: GetBuilder<EditProductController>(
                builder: (controller) {
                  return Form(
                    key: controller.formState,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 24),
                        CustomText(
                          title: "Cost",
                          icon: const Icon(
                            Icons.monetization_on,
                            color: Colors.white,
                          ),
                          keyboardType: TextInputType.number,
                          validator: (val) {
                            return validInput(val!, 8, '');
                          },
                          myController: controller.priceController, onChanged: (String ) {  },
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
                          myController: controller.quantityController, onChanged: (String ) {  },
                        ),
                        const SizedBox(height: 16),


                        CustomTextDate(
                          title: "Production Date",
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
                        SizedBox(width: 400,
                            child: DropDownSearchBranches()),
                        const SizedBox(height: 24),
                        SizedBox(
                          width: 350,
                          // padding: EdgeInsets.all(20),

                          child: ElevatedButton(
                            onPressed: () {
                              Get.defaultDialog(
                                  buttonColor: AppColor.color2,
                                  backgroundColor: AppColor.backGround,
                                  content: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [Image.asset(ImageAsset.trueIcon)],
                                    ),
                                  ),
                                  title: " Modified successfully",
                                  titleStyle: TextStyle(color: Colors.white),
                                  textCancel: "Done",
                                  cancelTextColor: Colors.white,
                                  onCancel: () {});
                              print('llllllllllllllllllllllllllllllllllllllllllllllllllll');
                              print(controller.productionDataController.text );
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
                              'Save',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )),
        ),
      ),
    );
  }
}
