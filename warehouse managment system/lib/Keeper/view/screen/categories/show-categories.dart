import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/categories/add_categories_controller.dart';
import 'package:untitled3/Keeper/core/constant/image_asset.dart';
import 'package:untitled3/Keeper/view/screen/categories/search_categories.dart';

import '../../../controller/categories/test20.dart';
import '../../../controller/categories/show_categories_controller.dart';
import '../../../controller/inner_or_product_controller.dart';
import '../../../controller/test_controller.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/function/validator.dart';

import '../../widget/auth/custom_text_field.dart';
import '../../widget/custom_speeddial.dart';
import '../../widget/search_bar.dart';
import 'inner_categories.dart';

class ShowCategories extends GetView<ShowCategoriesController> {
  const ShowCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isDialogOpen = ValueNotifier(false);
    StorageController box = StorageController();
    Get.put(ShowCategoriesController());
    Get.put(AddCategoriesController());
    var i1 = true;

    CategoryController controller1 = Get.put(CategoryController());
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
                        delegate: CustomSearchDelegate(
                            search: controller.categoriesList)));
                  },
                ),
                Expanded(child: GetBuilder<ShowCategoriesController>(
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
                                "idcategory", controller.categoriesList[index].id);
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
    );
  }
}
