import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';

import '../../../controller/product/add_product_controller.dart';
import '../../../core/constant/app_color.dart';


class DropDownSearchBranches extends GetView<AddProductController> {
  final List<String> items = List.generate(50, (index) => "Item $index");

  DropDownSearchBranches({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddProductController());
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
                    labelText: '   To Branches',
                    labelStyle: TextStyle(color: Colors.white),
                    suffixIcon: Icon(
                      Icons.arrow_drop_down_outlined,
                      color: AppColor.color2,
                    ),
                    border: InputBorder.none),
                controller: controller.producingCompaniesController,
              ),
              suggestionsCallback: (pattern) {
                return controller.getSuggestions(pattern);
              },
              itemBuilder: (context, String suggestion) {
                return ListTile(
                  title: Text(
                    suggestion,
                  ),
                );
              },
              itemSeparatorBuilder: (context, index) {
                return const Divider();
              },
              transitionBuilder: (context, suggestionsBox, controller) {
                return suggestionsBox;
              },
              onSuggestionSelected: controller.onSuggestionSelectedProducingCompanies,
              suggestionsBoxController: controller.suggestionBoxProducingCompaniesController,
              validator: (value) =>
              value!.isEmpty ? 'Please select a city' : null,
              onSaved: (value) => controller.selectedProducingCompanies.value = value!,
            ),
          ],
        ),
      ),
    );
  }
}
