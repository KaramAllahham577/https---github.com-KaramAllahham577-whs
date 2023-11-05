import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:untitled3/General/view/screen/product/add_product.dart';
import 'package:untitled3/Keeper/controller/test_controller.dart';

import '../../../../General/controller/product/add_product_controller.dart';
import '../../../controller/product/add_product_branch_controller.dart';
import '../../../controller/product/add_product_controller.dart';
import '../../../core/constant/app_color.dart';


class DropDownSearchCategory extends GetView<AddProductGeneralController> {
  final List<String> items = List.generate(50, (index) => "Item $index");

  DropDownSearchCategory({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddProductGeneralController());
    StorageController box =Get.put(StorageController());
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff650707), width: 2.5),
          color: const Color(0xff161a1d),
          borderRadius: BorderRadius.circular(17.5)),
      width: 60,
      height: 70,
      // color:AppColor.backGround,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: <Widget>[
            TypeAheadFormField<String>(
              textFieldConfiguration: TextFieldConfiguration(

                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(

                    labelText: '  Category',
                    labelStyle: TextStyle(color: Colors.white),
                    suffixIcon: Icon(
                      Icons.arrow_drop_down_outlined,
                      color: AppColor.color2,
                    ),
                    border: InputBorder.none),
                controller: controller.product1Controller,
              ),
              suggestionsCallback: (pattern) {
                return controller.getSuggestionscat(pattern);
              },
              itemBuilder: (context, String suggestion) {
                return ListTile(
                  title: Text(
                    suggestion,
                  ),
                  // onTap: (){
                  //   controller.onSuggestionSelected1;
                  //   // int selectedCategoryId =
                  //   // controller.getCategoryIdByName(suggestion);
                  //   // print('Selected Category: $suggestion, ID: $selectedCategoryId');
                  // },
                );
              },
              itemSeparatorBuilder: (context, index) {
                return const Divider();
              },
              transitionBuilder: (context, suggestionsBox, controller) {
                return suggestionsBox;
              },
              onSuggestionSelected: (String suggestion){controller.product1Controller.text = suggestion;
              int selectedCategoryId =
              controller.getCategoryIdByName(suggestion);
              box.storage("idCat", selectedCategoryId);

              print('Selected Categoryvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv: $suggestion, ID: $selectedCategoryId');

              },
              suggestionsBoxController: controller.suggestionBoxController,
              validator: (value) =>
              value!.isEmpty ? 'Please select a city' : null,
              onSaved: (value) => controller.selectedCategory.value = value!,
            ),
          ],
        ),
      ),
    );
  }
}
