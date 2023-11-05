import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/General/controller/categories/test20.dart';
import 'package:untitled3/General/view/screen/categories/search_categories_general.dart';


import '../../../../Keeper/controller/test_controller.dart';
import '../../../../Keeper/core/constant/app_color.dart';
import '../../../../Keeper/core/constant/image_asset.dart';
import '../../../../Keeper/core/function/validator.dart';
import '../../../../Keeper/view/widget/auth/custom_text_field.dart';
import '../../../../Keeper/view/widget/custom_speeddial.dart';
import '../../../../Keeper/view/widget/search_bar.dart';
import '../../../../Keeper/controller/categories/test20.dart';
import '../../../controller/categories/add_categories_controller_general.dart';
import '../../../controller/categories/show_categories_controller_general.dart';

import 'inner_categories_general.dart';

class ShowCategoriesGeneral extends GetView<ShowCategoriesControllerGeneral> {
  const ShowCategoriesGeneral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isDialogOpen = ValueNotifier(false);
    StorageController box = StorageController();
    Get.put(ShowCategoriesControllerGeneral());
    Get.put(AddCategoriesControllerGeneral());
    var i1 = true;

    CategoryGeneralController controller1 = Get.put(CategoryGeneralController() );
    return Scaffold(
        backgroundColor: const Color(0xff161a1d),
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: SizedBox(
            height: double.infinity,
            child: Column(
              children: [
                SearchBar(
                  title: 'Categories',
                  onTap: () {
                    Get.to(showSearch(
                        context: context,
                        delegate: CustomSearchDelegateGeneral(
                            search: controller.categoriesList)));
                  },
                ),
                Expanded(child: GetBuilder<ShowCategoriesControllerGeneral>(
                  builder: (controller) {
                    if (controller.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return GridView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: controller.categoriesList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 10,
                        // childAspectRatio: ,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            // Get.to(const ShowProduct());

                            box.storage(
                                "idcategory", controller.categoriesList[index].id);  box.storage(
                                "idcategoryinner", controller.categoriesList[index].id);
                            controller1.fetchCategories();
                            print(controller.categoriesList[index].id);
                            // Get.to(InnerCategoriesPage(
                            //   innerCategory: controller1.response.value!.data,
                            // ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xff6a040f), width: 2.5),
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(17.5),
                            ),
                            child: Column(
                              children: [
                                Image.asset(ImageAsset.meat),
                                Text(
                                  controller
                                      .categoriesList[index].categoryName!,
                                  style: const TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ))
              ],
            ),
          ),
        ),
        floatingActionButton: GetBuilder<AddCategoriesControllerGeneral>(
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
        ));
  }
}
