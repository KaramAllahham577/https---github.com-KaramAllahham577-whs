import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/General/controller/categories/test20.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';
import 'package:untitled3/Keeper/data/model/categories/inner_categories_model.dart';

import '../../../../Keeper/controller/test_controller.dart';
import '../../../../Keeper/controller/categories/test20.dart';
import '../../../../Keeper/core/function/validator.dart';
import '../../../../Keeper/view/widget/auth/custom_text_field.dart';
import '../../../../Keeper/view/widget/custom_speeddial.dart';
import '../../../controller/categories/add_inner.dart';


class InnerCategoriesPageGeneral extends GetView<CategoryGeneralController> {
   InnerCategoriesPageGeneral({super.key, required this.innerCategory});

 final List innerCategory;
  final box = Get.put(StorageController());

  @override
  Widget build(BuildContext context) {
    Get.put(AddCategoriesInnerControllerGeneral());
    Get.put(CategoryGeneralController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inner Categories'),
      ),
      body: Container(
        color: AppColor.backGround,
        child: ListView.builder(
          itemCount: innerCategory.length,

            itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            color:Colors.white10,
            height: 80,
            child: InkWell(
              onTap: (){
                box.storage("idcategory", innerCategory[index].id);

                print('${innerCategory[index].id}gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg');
                controller.fetchCategories();

                // Get.to(ShowProduct());

              },
              child: Row(
                children:  [
                  Text(innerCategory[index].categoryName,style: const TextStyle(fontSize: 30,color: Colors.white),),
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios,color: Colors.white,)
                ],
              ),
            ),
          );
        }),
      ),
        floatingActionButton: GetBuilder<AddCategoriesInnerControllerGeneral>(
          builder: (controller) {
            return CustomSpeedDial(
              text: 'Categories',
              onTapDel: () {},
              onTapAdd: () {
                Get.defaultDialog(
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
                              hint: "enter address",
                              icon: const Icon(Icons.category),
                              textInputType: TextInputType.streetAddress,
                              validator: (val) {
                                return validInput(val!, 3, '');
                              },
                              myController: controller.categoryName),
                        ],
                      ),
                    ),
                  ),
                  title: " Add Category ",
                  titleStyle: const TextStyle(color: Colors.white),
                );
              },
            );
          },
        )
    );
  }
}
