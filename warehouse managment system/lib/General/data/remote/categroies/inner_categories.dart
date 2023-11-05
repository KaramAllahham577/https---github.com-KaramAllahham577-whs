import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';
import 'package:untitled3/Keeper/data/model/categories/inner_categories_model.dart';

import '../../../../Keeper/controller/categories/test20.dart';
import '../../../../Keeper/controller/test_controller.dart';
import '../../../controller/categories/test20.dart';


class InnerCategoriesPageGeneral extends GetView<CategoryGeneralController> {
   InnerCategoriesPageGeneral({super.key, required this.innerCategory});

 final List innerCategory;
  final box = Get.put(StorageController());

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
