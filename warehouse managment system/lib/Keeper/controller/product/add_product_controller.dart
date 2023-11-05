import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:image_picker/image_picker.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:untitled3/Keeper/controller/categories/show_categories_controller.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';
import 'package:untitled3/Keeper/core/constant/image_asset.dart';
import 'package:untitled3/Keeper/data/datasource/remote/product/edit_product_data.dart';
import 'package:untitled3/Keeper/data/model/product/add_product_model.dart';
import 'package:untitled3/Keeper/data/model/product/edot_product_model.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import '../../data/datasource/remote/product/add-product_data.dart';

class AddProductController extends GetxController {
  ShowCategoriesController controllerc =ShowCategoriesController();
  late TextEditingController manufacturerController;
  late TextEditingController descriptionController;
  late TextEditingController productNameController;
  late TextEditingController weightController;
  late TextEditingController sizeController;
  late TextEditingController boxQuantityController;
  late String qrData;
  final Rx<XFile?> selectedImage = Rx<XFile?>(null);
  GlobalKey<FormState> formState = GlobalKey();
  GlobalKey<FormState> formState1 = GlobalKey();
  AddProductData addProductData = AddProductData(Get.find());
  final ImagePicker _picker = ImagePicker();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController producingCompaniesController =
      TextEditingController();

  RxString selectedCategory = RxString('');

  SuggestionsBoxController suggestionBoxController = SuggestionsBoxController();

  RxString selectedProducingCompanies = RxString('');

  SuggestionsBoxController suggestionBoxProducingCompaniesController =
      SuggestionsBoxController();



  Future<void> pickImage() async {
    final pickedImage = await Get.bottomSheet<XFile>(
      Container(
        color: Colors.white,
        child: Wrap(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Choose from Gallery'),
              onTap: () async {
                Get.back(
                    result: await _getImageFromSource(ImageSource.gallery));
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Take a Photo'),
              onTap: () async {
                Get.back(result: await _getImageFromSource(ImageSource.camera));
              },
            ),
          ],
        ),
      ),
    );

    if (pickedImage != null) {
      selectedImage.value = pickedImage; // Store the selected image.
    }
  }

int j=0;


  Future<List<String>> getSuggestionscat(String pattern) async {
    final response = await http.get(Uri.parse('http://192.168.1.104:8000/api/managers/show/RootsCats'), headers: {'Authorization': 'Bearer $Token'},);

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = json.decode(response.body);
      final List<dynamic> data = jsonResponse['data'];

      final List<String> categories = data.map((item) => item['category_name']).cast<String>().toList();

      return categories.where((category) => category.toLowerCase().contains(pattern.toLowerCase())).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }


  List<String> getSuggestions(String pattern) {
    // Replace this with your actual suggestion logic
    // Return a list of cities that match the pattern
    // For example:
    List<String> cities1 = ['Branches A1', ' Branches A2', 'Branches B1 ', 'Branches B2  '];
    return cities1
        .where((city) => city.toLowerCase().contains(pattern.toLowerCase()))
        .toList();
  }

  List<String> getSuggestionspr(String pattern) {
    // Replace this with your actual suggestion logic
    // Return a list of cities that match the pattern
    // For example:
    List<String> cities1 = ['XXXX', ' XX', 'YY', 'ZZ'];
    return cities1
        .where((city) => city.toLowerCase().contains(pattern.toLowerCase()))
        .toList();
  }

  void onSuggestionSelected(String suggestion) {
    categoryController.text = suggestion;
    print('lllllllllllllllllllllllllllllllllll');
  }

  void onSuggestionSelectedProducingCompanies(String suggestion) {
    producingCompaniesController.text = suggestion;
  }

  Future<XFile?> _getImageFromSource(ImageSource source) async {
    return _picker.pickImage(
      source: source,
      maxWidth: 1200,
      maxHeight: 1200,
      imageQuality: 80,
    );
  }

  postData() async {
    try {
      AddProductModel add = AddProductModel(
          productName: productNameController.text,
          description: descriptionController.text,
          producingCompanyId: '1',
          supplierId: '1',
          productCode: '1',
          categoryId: 1,
          weight: weightController.text,
          size: sizeController.text,
          boxQuantity: boxQuantityController.text, wUnitId: '', sUnitId: '');

      var response = await addProductData.postData(add.toJson());

      update();
      print(response);
      print(
          's................................................................. before response post11111 ');

      if (response["message"] == "product updated successfully") {
        return Get.defaultDialog(
            buttonColor: AppColor.color2,
            backgroundColor: AppColor.backGround,
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [Image.asset(ImageAsset.trueIcon)],
              ),
            ),
            title: " Modified successfully",
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
    manufacturerController = TextEditingController();

    descriptionController = TextEditingController();

    weightController = TextEditingController();
    sizeController = TextEditingController();
    boxQuantityController = TextEditingController();
    productNameController = TextEditingController();
    print('qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq');


    super.onInit();
  }

  @override
  void dispose() {
    manufacturerController.dispose();

    descriptionController.dispose();

    productNameController.dispose();

    weightController.dispose();
    categoryController.dispose();
    producingCompaniesController.dispose();
    super.dispose();
  }

  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final RxString name = ''.obs;

  final RxString description = ''.obs;
  final RxString weight = ''.obs;
  final RxString size = ''.obs;
  final RxString boxQuantity = ''.obs;

  Future<void> scanQRCode1() async {
    print(";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;");
    final scanResult = await scanner.scan();

    if (scanResult == null) return; // Handle case if user cancels the scan

    final values = scanResult.split('\n');
    if (values.length >= 5) {
      productNameController.text = values[0].substring(1); // Extract name from QR data
      descriptionController.text = values[1].substring(1); // Extract description from QR data
      weightController.text = values[2].substring(1); // Extract weight from QR data
      sizeController.text = values[3].substring(1); // Extract size from QR data
      boxQuantityController.text = values[4].substring(1);
    }
  }

  void generateQRCode() {
    print('${name.value}kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk');
    final qrData = ':${name.value}\n: ${description.value}\n: ${weight.value}\n: ${size.value}\n: ${boxQuantity.value}';
    Get.dialog(
      Dialog(
        child: QrImage(
          data: qrData,
          version: QrVersions.auto,
          size: 200.0,
        ),
      ),
    );
  }



}
