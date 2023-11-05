import 'package:get/get.dart';
import 'package:untitled3/Keeper/views/karam/base_client.dart';

import '../core/constant/const.dart';
import '../models/shipment_orders_list.dart';
import '../views1/widgets/shipment_card.dart';


class ShipmentOrderListController extends GetxController {
  ShipmentsOrdersList shipments = Get.put(ShipmentsOrdersList());
  var shipmentId = storage1.read('id1');

  var isLoading = true.obs;
  var shipmentsList = <ShipmentsOrdersList>[].obs;

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
      var shipment = await fetch_shipments.get(
          'http://$Ip:8000/api/managers/keeper/show/showOrderLists/$shipmentId',
          Token);
      print(shipment);

      if (shipment != null && shipment is List) {
        shipmentsList.value =
            shipment.map((item) => ShipmentsOrdersList.fromJson(item)).toList();
      }
    } finally {
      isLoading(false);
      print('تم تحميل لائحة طلبات الشحنة بنجاح ');
    }
  }
}
