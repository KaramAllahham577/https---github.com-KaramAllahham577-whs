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
import '../../data/datasource/shipmet_data.dart';
import '../../data/model/AddShipmentModel.dart';
import '../../data/model/product/AddproductBranchModel.dart';
import '../test_controller.dart';

class AddShipmentController extends GetxController {
  late TextEditingController shipmentDateController;
  late TextEditingController quantityController;
  late TextEditingController costController;

  StorageController box = Get.put(StorageController());

  AddShipmentData addShipmentData = AddShipmentData(Get.find());

  postData() async {
    try {
      AddShipmentModel add = AddShipmentModel(
          sourceAddressId:box.reade("idsou").toString(),
          shippingCompany: 'ss',
          destinationAddressId:box.reade("iddes").toString(),
          shipmentDate: shipmentDateController.text,
          shipmentType: "in",
          shipmentQuantity: quantityController.text);
      print(add.toJson());

      var response = await addShipmentData.postData(add.toJson());

      update();
      print(response);
      print(
          's................................................................. before response post11111 ');

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
    shipmentDateController = TextEditingController();
    costController = TextEditingController();

    DateTime today = DateTime.now();
    String dateStr = "${today.year}-${today.month}-${today.day}";
    shipmentDateController.text = dateStr;

    super.onInit();
  }

  @override
  void dispose() {
    quantityController.dispose();

    costController.dispose();
    shipmentDateController.dispose();
    super.dispose();
  }
}
