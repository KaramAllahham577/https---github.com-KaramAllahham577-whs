import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:image_picker/image_picker.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:untitled3/General/controller/categories/show_categories_controller_general.dart';
import 'package:untitled3/General/view/screen/categories/show-categories_general.dart';
import 'package:untitled3/Keeper/controller/categories/show_categories_controller.dart';
import 'package:untitled3/Keeper/controller/test_controller.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';
import 'package:untitled3/Keeper/core/constant/image_asset.dart';
import 'package:untitled3/Keeper/data/datasource/remote/product/edit_product_data.dart';
import 'package:untitled3/Keeper/data/model/product/add_product_model.dart';
import 'package:untitled3/Keeper/data/model/product/edot_product_model.dart';
import 'package:qrscan/qrscan.dart' as scanner;

import '../../data/remote/product/add-product_data.dart';

class AddProductGeneralController extends GetxController {
  ShowCategoriesControllerGeneral controllerc =
      ShowCategoriesControllerGeneral();
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
  AddProductGeneralData addProductData = AddProductGeneralData(Get.find());
  final ImagePicker _picker = ImagePicker();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController producingController = TextEditingController();
  final TextEditingController producingCompaniesController =
      TextEditingController();
  final TextEditingController product1Controller = TextEditingController();
  RxString selectedCategory = RxString('');

  SuggestionsBoxController suggestionBoxController = SuggestionsBoxController();

  RxString selectedProducingCompanies = RxString('');

  SuggestionsBoxController suggestionBoxProducingCompaniesController =
      SuggestionsBoxController();

  List<dynamic> data = [];
  List<dynamic> data1 = [];

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


  int j = 0;
  final box = Get.put(StorageController());

  Future<List<String>> getSuggestionscat(String pattern) async {
    final response = await http.get(
      Uri.parse('http://$Ip:8000/api/managers/show/All'),
      headers: {'Authorization': 'Bearer $Token'},
    );

    if (response.statusCode == 200) {
     var jsonResponse = json.decode(response.body);
      data = jsonResponse;

      List<String> categories =
          data.map((item) => item['category_name']).cast<String>().toList();

      return categories
          .where((category) =>
              category.toLowerCase().contains(pattern.toLowerCase()))
          .toList();
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
      (category) => category['category_name'] == categoryName,
      orElse: () => null,
    );

    return selectedCategory != null ? selectedCategory['id'] : null;
  }

  Future<List<String>> getSuggestionsProducing(String pattern) async {
    final response = await http.get(
      Uri.parse('http://$Ip:8000/api/managers/show/ProducingCompanies'),
      headers: {'Authorization': 'Bearer $Token'},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = json.decode(response.body);
      data1 = jsonResponse['companies'];

      List<String> categories =
      data1.map((item) => item['company_name']).cast<String>().toList();

      return categories
          .where((category) =>
          category.toLowerCase().contains(pattern.toLowerCase()))
          .toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }

  onSuggestionSelected(String suggestion) {
    producingController.text = suggestion;
    print('lllllllllllllllllllllllllllllllllll');
  }

  int getCategoryIdByNamep(String categoryName) {
    final selectedCategory = data1.firstWhere(
          (category) => category['company_name'] == categoryName,
      orElse: () => null,
    );

    return selectedCategory != null ? selectedCategory['id'] : null;
  }

  Future<XFile?> _getImageFromSource(ImageSource source) async {
    return _picker.pickImage(
      source: source,
      maxWidth: 1200,
      maxHeight: 1200,
      imageQuality: 80,
    );
  }

  var selectedValue = 'CM'.obs;

  void updateSelectedValue(String newValue) {
    selectedValue.value = newValue;
    update();
  }

  postData() async {
    try {
      AddProductModel add = AddProductModel(
          productName: productNameController.text,
          description:descriptionController.text,
          producingCompanyId: '${box.reade("idProducing")}',
          supplierId: '1',
          productCode: '1',
          categoryId: '${box.reade("idCat")}',
          weight: weightController.text,
          size: sizeController.text,
          boxQuantity:boxQuantityController.text,
          wUnitId: selectedValue.value,
          sUnitId: selectedValue.value);
      print('//////////////////////////////////////////////');

      var response = await addProductData.postData(add.toJson());

      update();
      print(response);
      print(
          's................................................................. before response post11111 ');

      if (response[1] == 201) {
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
  Future<void> sendData() async {
    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $Token'
    };
    var request = http.MultipartRequest('POST', Uri.parse('http://$Ip:8000/api/managers/GeneralManager/Add/NewProduct'));
    request.fields.addAll({
      'product_name': productNameController.text,
      'Category_id': '${box.reade("idCat")}',
      'description': descriptionController.text,
      'Producing_Company_id': '${box.reade("idProducing")}',
      'supplier_id': '1',
      'UPC_code': '555',
      'product_code': '555',
      'weight': weightController.text,
      'WUnit': selectedValue.value,
      'size': sizeController.text,
      'SUnit': selectedValue.value,
      'box_quantity': boxQuantityController.text
    });
    request.files.add(await http.MultipartFile.fromPath('image', selectedImage
        .value!
        .path));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
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
    }
    else {
      print(response.reasonPhrase);
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
      productNameController.text =
          values[0].substring(1); // Extract name from QR data
      descriptionController.text =
          values[1].substring(1); // Extract description from QR data
      weightController.text =
          values[2].substring(1); // Extract weight from QR data
      sizeController.text = values[3].substring(1); // Extract size from QR data
      boxQuantityController.text = values[4].substring(1);
    }
  }

  void generateQRCode() {
    print(
        '${name.value}kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk');
    final qrData =
        ':${name.value}\n: ${description.value}\n: ${weight.value}\n: ${size.value}\n: ${boxQuantity.value}';
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
