// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:lottie/lottie.dart';
//
// import '../../view/test55555/dropdownmenu.dart';
//
//
// class Add_Shipment extends StatefulWidget {
//   const Add_Shipment({super.key});
//
//   @override
//   State<Add_Shipment> createState() => _Add_ShipmentState();
// }
//
// class _Add_ShipmentState extends State<Add_Shipment> {
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width; //411
//     double screenheight = MediaQuery.of(context).size.height; //707
//     final emailcontroller = TextEditingController();
//
//
//     return Scaffold(
//
//         backgroundColor: const Color(0xff161a1d),
//         body: SafeArea(
//           child: Padding(
//             padding:
//                 const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
//             child: SingleChildScrollView(
//               child: Container(
//                 height: screenheight - 80,
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 decoration: BoxDecoration(
//                     border: Border.all(
//                         color: const Color(0xff6a040f),
//                         width: screenWidth / 150),
//                     color: const Color(0xff161a1d),
//                     borderRadius: BorderRadius.circular(17.5)),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: 30,
//                       ),
//                       Container(
//                         width: 175,
//                         height: 165,
//                         child: Image.asset(
//                           'assets/images/icons/add_shipment_page.png',
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       const Text(
//                         "Add Shipment",
//                         style: TextStyle(
//                           fontFamily: "Dm Sans",
//                           fontSize: 25,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Row(
//                         children: [
//                           SizedBox(
//                             width: 15,
//                           ),
//                           Expanded(
//                               child: MyDropDownMenu(
//                             enabledBorderColor: Color(0xff6a040f),
//                             initialSelectedItem: "",
//                             hintText: 'Select Type',
//                             typeList: [
//                               'aerial',
//                               'overland',
//                               'neutical',
//                             ],
//                           )),
//                           SizedBox(
//                             width: 15,
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       AddShipmentTextFields(
//                         errorBorderColor: Colors.red,
//                         labelText: 'Shipment Date',
//                         errorText: 'Invalid Date',
//                         hintText: 'Enter the date',
//                         textEditingController: emailcontroller,
//                       ),
//
//                       AddShipmentTextFields(
//                         errorBorderColor: Colors.red,
//
//                         labelText: 'Max Quantity',
//                         errorText: 'Invalid Quantity',
//                         hintText: 'Enter the Quantity',
//                         textEditingController: emailcontroller,
//                       ),
//                       AddShipmentTextFields(
//                         errorBorderColor: Colors.red,
//
//                         labelText: 'Shipment Cost',
//                         errorText: 'Invalid Cost',
//                         hintText: 'Enter the Cost',
//                         textEditingController: emailcontroller,
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Get.to(Shipment_Path());
//                         },
//                         child: Row(
//                           children: [
//                             SizedBox(
//                               width: 30,
//                             ),
//                             Expanded(
//                               child: Card(
//                                 color: Color(0xff161a1d),
//                                 elevation: 1000,
//                                 shadowColor: Colors.white,
//                                 child: Container(
//                                   height: 60,
//                                   decoration: BoxDecoration(
//                                     color: Color(0xff53676D).withOpacity(0.5),
//                                     borderRadius: BorderRadius.circular(10),
//                                     border: Border.all(color: Color(0xff6a040f), width: 2),
//                                   ),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         width: 40,
//                                         height: 40,
//                                         child: Image.asset(
//                                           'assets/images/icons/shipment_path.png',
//                                           fit: BoxFit.contain,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 15,
//                                       ),
//                                       Text(
//                                         'Set Path ',
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                           fontFamily: "DM Sans",
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 22.5,
//                                           color: Colors.white70,
//                                         ),
//                                       ),
//                                       SizedBox(width: 10,),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 30,
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ));
//   }
// }
