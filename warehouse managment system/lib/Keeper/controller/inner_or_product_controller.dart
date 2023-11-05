import 'dart:convert';

import 'package:get/get.dart';
import 'package:untitled3/Keeper/data/datasource/remote/inner_or_product_data.dart';
import 'package:untitled3/Keeper/view/screen/categories/inner_categories.dart';

import '../data/model/category_or_product_model.dart';
import '../view/screen/product/show_product.dart';

import 'package:http/http.dart' as http;

class InnerOrProductController extends GetxController {
  final _apiUrl =
      'http://192.168.1.104:8000/api/managers/show/CHcategories/10/1'; // Replace with your API endpoint URL

  final RxBool isLoading = false.obs;
  final Rx<InnerOrProductModel?> response = Rx<InnerOrProductModel?>(null);
  InnerOrProductData innerOrProductData = InnerOrProductData(Get.find());

  Future<void> fetchCategories() async {
    isLoading.value = true;

    try {
      final http.Response apiResponse = await http.get(Uri.parse(_apiUrl));
      final jsonResponse = json.decode(apiResponse.body);

      if (apiResponse.statusCode == 200) {
        response.value = InnerOrProductModel.fromJson(jsonResponse);

        if (response.value!.massage) {
          // Navigate to inner page if 'massage' is true
          Get.off(InnerCategoriesPage(
            innerCategory: response.value!.data,
          ));
        } else {
          // Navigate to products page if 'massage' is false
          Get.to(ShowProduct());
        }
      } else {
        // Handle API error
        Get.snackbar('Error', 'Failed to fetch categories.');
      }
    } catch (e) {
      // Handle exception
      print(e);
      Get.snackbar('Error', 'Failed to fetch categories.');
    } finally {
      isLoading.value = false;
    }
  }
}
