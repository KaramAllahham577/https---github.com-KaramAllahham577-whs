import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';
import 'package:untitled3/Keeper/core/constant/image_asset.dart';
import 'package:untitled3/Keeper/data/datasource/remote/product/edit_product_data.dart';
import 'package:untitled3/Keeper/data/model/product/edot_product_model.dart';
import 'package:http/http.dart' as http;
import '../../core/constant/const.dart';
import '../../data/datasource/remote/product/AddproductBranch_data.dart';
import '../../data/model/product/AddproductBranchModel.dart';
import '../test_controller.dart';

class AddProductBranchController extends GetxController {
  late TextEditingController quantityController;
  late TextEditingController priceController;
  late TextEditingController descriptionController;
  late TextEditingController productionDataController;
  late TextEditingController expiryDataController;
  late TextEditingController buyingCosController;
  late TextEditingController dateInController;
  late TextEditingController purchaseNumberController;
  late String qrData;
  RxString selectedCategory = RxString('');
  // final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final  TextEditingController product1Controller= TextEditingController();
   List<dynamic>  data=[];
  SuggestionsBoxController suggestionBoxController = SuggestionsBoxController();
  StorageController box =Get.put(StorageController());

  AddProductBranchData addProductBranchData = AddProductBranchData(Get.find());
  Future<List<String>> getSuggestionscat(String pattern) async {
    final response = await http.get(Uri.parse('http://$Ip:8000/api/managers/show/allProducts'), headers: {'Authorization': 'Bearer $Token'},);

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = json.decode(response.body);
      data = jsonResponse['data'];

      List<String> categories = data.map((item) => item['product_name']).cast<String>().toList();

      return categories.where((category) => category.toLowerCase().contains(pattern.toLowerCase())).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
   onSuggestionSelected1(String suggestion) {
    product1Controller.text = suggestion;
    print('lllllllllllllllllllllllllllllllllll');
  }
  int getCategoryIdByName(String categoryName) {
    final selectedCategory = data.firstWhere(
          (category) => category['product_name'] == categoryName,
      orElse: () => null,
    );

    return selectedCategory != null ? selectedCategory['id'] : null;
  }

  postData() async {
    try {
      AddproductBranchModel add = AddproductBranchModel(
          productId: box.reade("idProductss").toString(),
          branchId: box.reade("idBranch").toString(),
          inQuantity: quantityController.text,
          price: priceController.text,
          purchaseNum: purchaseNumberController.text,
          buyingCost: buyingCosController.text,
          prodDate: productionDataController.text,
          expDate: expiryDataController.text,
          dateIn: dateInController.text,
          supplierId: '1');
      print(add.toJson());

      var response = await addProductBranchData.postData(add.toJson());

      update();
      print(response);
      print(
          's................................................................. before response post11111 ${box.reade("idProduct")}');

        if (response["status code"] == 201) {
        return Get.defaultDialog(
            buttonColor: AppColor.color2,
            backgroundColor: AppColor.backGround,
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [Image.asset(ImageAsset.trueIcon)],
              ),
            ),
            title: " Added successfully",
            titleStyle: const TextStyle(color: Colors.white),
            textCancel: "Done",
            cancelTextColor: Colors.white,
            onCancel: () {});
      } else {
        return Get.defaultDialog(
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [Text("Fail")],
              ),
            ),
            title: " fail",
            textCancel: "Cancel",
            onCancel: () {});
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  void onInit() {
    quantityController = TextEditingController();
    // quantityController.text='sdfa';

    priceController = TextEditingController();
    descriptionController = TextEditingController();
    buyingCosController = TextEditingController();
    productionDataController = TextEditingController();
    expiryDataController = TextEditingController();
    dateInController = TextEditingController();
    purchaseNumberController = TextEditingController();
    qrData = "as";

    DateTime today = DateTime.now();
    String dateStr = "${today.year}-${today.month}-${today.day}";
    productionDataController.text = dateStr;
    expiryDataController.text = "${today.year}-${today.month}-${today.day}";
    dateInController.text = "${today.year}-${today.month}-${today.day}";
    print(DateTime.now());
    priceController= TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    quantityController.dispose();

    priceController.dispose();
    descriptionController.dispose();
    expiryDataController.dispose();
    productionDataController.dispose();
    buyingCosController.dispose();
    dateInController.dispose();
priceController.dispose();
    product1Controller.dispose();
    purchaseNumberController.dispose();
    super.dispose();
  }



}
