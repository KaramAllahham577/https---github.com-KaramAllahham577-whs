
import 'dart:io';

import 'package:get/get.dart';

import '../core/constant/const.dart';
import '../models/Show_Order_Products_Model.dart';
import '../views/karam/base_client.dart';
import '../views1/widgets/shipment_order_list_card.dart';



class ShipmentOrderProductController extends GetxController {
  ShowOrderProductsModel shipmentsOrderProducts = Get.put(ShowOrderProductsModel());

  var isLoading = true.obs;
  var shipmentsOrderProdcutList = <ShowOrderProductsModel>[].obs;
  var OrderId = storage2.read('orderListId');

  HttpClient1 fetch_shipments = HttpClient1();



  @override
  void onInit() {
    super.onInit();
    fetchShipments();
  }



// ...

  void fetchShipments() async {
    isLoading(true);
    try {
      var  shipment = await fetch_shipments.get('http://10.0.2.2:8000/api/managers/keeper/show/showOrderProducts/$OrderId',Token);
      print(shipment);

      if (shipment != null && shipment is List) {
        shipmentsOrderProdcutList.value = shipment.map((item) => ShowOrderProductsModel.fromJson(item )).toList().cast<ShowOrderProductsModel>();
      }


    } finally {
      isLoading(false);
      print('تم تحميل بضائع الطلب بنجاح ');
    }
  }

}
