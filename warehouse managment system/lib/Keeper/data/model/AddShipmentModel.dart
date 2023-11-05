class AddShipmentModel {

  String? sourceAddressId;
  String? shippingCompany;
  String? destinationAddressId;
  String? shipmentDate;
  String? shipmentType;

  String? INorOut;
  String? shipmentQuantity;




  AddShipmentModel(
      {

      required  this.sourceAddressId,
        required this.shippingCompany,
        required this.destinationAddressId,
        required this.shipmentDate,
        required this.shipmentType,

        required this.shipmentQuantity,


      });

  AddShipmentModel.fromJson(Map<String, dynamic> json) {

    sourceAddressId = json['SourceAddress_id'];
    shippingCompany = json['shipping_company'];
    destinationAddressId = json['DestinationAddress_id'];
    shipmentDate = json['shipment_date'];
    shipmentType = json['shipment_type'];

    shipmentQuantity = json['shipment_quantity'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['SourceAddress_id'] = sourceAddressId;
    data['shipping_company'] = shippingCompany;
    data['DestinationAddress_id'] = destinationAddressId;
    data['shipment_date'] = shipmentDate;
    data['shipment_type'] = shipmentType;

    data['shipment_quantity'] = shipmentQuantity;


    return data;
  }
}