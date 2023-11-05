import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/General/controller/sh.dart';


import '../../../controller/shipment/shipment_controller.dart';
import '../../Address.dart';
import '../../adressdes_drop.dart';
import '../../city_drop.dart';
import '../../conutrydrop.dart';
import '../../region_drop.dart';

class Shipment_Path extends GetView<AddShipmentController> {
  const Shipment_Path ({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width; //411
    // double screenheight = MediaQuery.of(context).size.height; //707

    final emailcontroller = TextEditingController();
Get.put(AddShipmentControllerG());

    return  Scaffold(
      backgroundColor: const Color(0xff161a1d),
      appBar: AppBar(
        elevation: 20,
        backgroundColor: const Color(0xff161a1d),
        title: const Center(
          child: Text(
            'Set Shipment Path ',
            style: TextStyle(
              fontFamily: "DM Sans",
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 7.5,),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff6a040f).withOpacity(0.02),
                  borderRadius: BorderRadius.circular(10),
                  border:
                  Border.all(color: const Color(0xff6a040f), width: 2),
                ),
                width: 360,
                // height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 15,),
                      Container(
                        width: 90,
                        height: 90,
                        child: Image.asset(
                          'assets/images/icons/source.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 20,),
                      CityDropdown(co: true,),
                     SizedBox(height: 5,),
                      CountryDropdown(co: true,),
                      const SizedBox(height: 7.5,),
                      const SizedBox(
                        width: 15,
                      ),
                      RegionDropdown(co: true,),
                      const SizedBox(
                        width: 15,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      AddressDropdown()

                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12.5,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff6a040f).withOpacity(0.02),
                  borderRadius: BorderRadius.circular(10),
                  border:
                  Border.all(color: const Color(0xff007f5f), width: 2),
                ),
                width: 360,
                // height: 395,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 15,),
                      Container(
                        width: 90,
                        height: 90,
                        child: Image.asset(
                          'assets/images/icons/destanation.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 20,),
                      CityDropdown(co: false,),
                      SizedBox(height: 5,),
                      CountryDropdown(co: false,),
                      const SizedBox(height: 7.5,),
                      const SizedBox(
                        width: 15,
                      ),
                      RegionDropdown(co: false,),
                      const SizedBox(
                        width: 15,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      AddressDestinationDropdown()

                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 7.5,
              ),
              GestureDetector(
                onTap: () {
                  // Get.to(Shipment_Path());
                  controller.postData();
                },
                child: Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Card(
                        color: const Color(0xff161a1d),
                        elevation: 1000,
                        shadowColor: Colors.white,
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xff53676D).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: const Color(0xff6a040f), width: 2),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [

                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Add Shipment',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "DM Sans",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22.5,
                                  color: Colors.white70,
                                ),
                              ),
                              SizedBox(width: 10,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
