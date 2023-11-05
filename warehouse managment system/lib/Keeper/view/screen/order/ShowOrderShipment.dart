import 'package:flutter/material.dart';
import 'package:get/get.dart';



import 'OpenNewShipment.dart';
import 'ShowOrderShipmentCard.dart';

class ShowOrderShipment extends StatelessWidget {
  ShowOrderShipment({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161a1d),
      appBar: AppBar(
        elevation: 20,
        backgroundColor: const Color(0xff161a1d),
        title: const Center(
          child: Text(
            'Choose the Shipment ',
            style: TextStyle(
              fontFamily: "DM Sans",
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
               width: 404,
             height: 670,
             padding: EdgeInsets.all(5),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               border: Border.all(color: Color(0xff6a040f), width: 2),
             ),
             child: ListView.separated(
                 scrollDirection: Axis.vertical,
                 itemBuilder: (context, index) => GestureDetector(
                     onTap: () {
                       // Get.to(Shipment_Details()
                       // );

                     },
                     child: ShowOrderShipmentCard()),
                 separatorBuilder: (context, index) => const SizedBox(
                   height: 7.5,
                 ),
                 itemCount: 10),

          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: (){
              Get.to(OpenNewShipment());
            },
            child: Row(
              children: [
                SizedBox(width: 30),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffff676D).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff6a040f), width: 2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ' Open New Shipment',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "DM Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 22.5,
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 30),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
