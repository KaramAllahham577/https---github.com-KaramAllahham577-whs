import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';
import 'package:untitled3/Keeper/core/constant/image_asset.dart';
import 'package:untitled3/Keeper/data/datasource/remote/product/edit_product_data.dart';
import 'package:untitled3/Keeper/data/model/product/edot_product_model.dart';

class EditProductController extends GetxController {
  late TextEditingController quantityController;

  late TextEditingController priceController;

  late TextEditingController manufacturerController;
  late TextEditingController descriptionController;
  late TextEditingController productionDataController;

  late TextEditingController expiryDataController;

  late TextEditingController buyingCosController;

  late TextEditingController dateInController;

  late TextEditingController purchaseNumberController;
  late String qrData;
  final Rx<XFile?> selectedImage = Rx<XFile?>(null);

  GlobalKey<FormState> formState = GlobalKey();
  EditProductData editProductData = EditProductData(Get.find());
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    final pickedImage = await Get.bottomSheet<XFile>(
      Container(
        color: Colors.white,
        child: Wrap(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.photo_library),
              title: Text('Choose from Gallery'),
              onTap: () async {
                Get.back(
                    result: await _getImageFromSource(ImageSource.gallery));
              },
            ),
            ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text('Take a Photo'),
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
      EditProductModel add = EditProductModel(
          productId: '1',
          branchId: '1',
          quantity: quantityController.text,
          price: priceController.text,
          purchaseNum: purchaseNumberController.text,
          buyingCost: buyingCosController.text,
          prodDate: productionDataController.text,
          expDate: expiryDataController.text,
          dateIn: dateInController.text, supplierId: '1');

      var response = await editProductData.postData(add.toJson());

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
            titleStyle: TextStyle(color: Colors.white),
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
    manufacturerController = TextEditingController();
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
    super.onInit();
  }

  @override
  void dispose() {
    quantityController.dispose();
    manufacturerController.dispose();
    priceController.dispose();
    descriptionController.dispose();
    expiryDataController.dispose();
    productionDataController.dispose();
    buyingCosController.dispose();
    dateInController.dispose();

    purchaseNumberController.dispose();
    super.dispose();
  }
}
