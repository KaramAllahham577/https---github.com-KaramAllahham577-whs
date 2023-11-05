// import 'package:flutter/material.dart';
//
// import '../../view/test55555/dropdownmenu.dart';
//
//
// class Shipment_Path extends StatelessWidget {
//   const Shipment_Path ({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width; //411
//     double screenheight = MediaQuery.of(context).size.height; //707
//
//     final emailcontroller = TextEditingController();
//
//     return  Scaffold(
//       backgroundColor: const Color(0xff161a1d),
//       appBar: AppBar(
//         elevation: 20,
//         backgroundColor: const Color(0xff161a1d),
//         title: Center(
//           child: Text(
//             'Set Shipment Path ',
//             style: TextStyle(
//               fontFamily: "DM Sans",
//               fontWeight: FontWeight.w500,
//               fontSize: 25,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//       body: Container(
//         width: screenWidth,
//         height: screenheight,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(height: 7.5,),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Color(0xff6a040f).withOpacity(0.02),
//                   borderRadius: BorderRadius.circular(10),
//                   border:
//                   Border.all(color: Color(0xff6a040f), width: 2),
//                 ),
//                 width: 360,
//                 height: 395,
//                 child: Column(
//                   children: [
//                     SizedBox(height: 15,),
//                     Container(
//                       width: 90,
//                       height: 90,
//                       child: Image.asset(
//                         'assets/images/icons/source.png',
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                     SizedBox(height: 20,),
//
//                     Row(
//                       children: [
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Expanded(
//                             child: MyDropDownMenu(
//                               enabledBorderColor: Color(0xff6a040f),
//                               initialSelectedItem: "",
//                               hintText: 'Country',
//                               typeList: [
//                                 'aerial',
//                                 'overland',
//                                 'neutical',
//                               ],
//                             )),
//                         SizedBox(
//                           width: 7.5,
//                         ),
//                         Expanded(
//                             child: MyDropDownMenu(
//                               enabledBorderColor: Color(0xff6a040f),
//                               initialSelectedItem: "",
//                               hintText: 'City',
//                               typeList: [
//                                 'aerial',
//                                 'overland',
//                                 'neutical',
//                               ],
//                             )),
//                         SizedBox(
//                           width: 15,
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 7.5,),
//                     Row(
//                       children: [
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Expanded(
//                             child: MyDropDownMenu(
//                               enabledBorderColor: Color(0xff6a040f),
//                               initialSelectedItem: "",
//                               hintText: 'Region',
//                               typeList: [
//                                 'aerial',
//                                 'overland',
//                                 'neutical',
//                               ],
//                             )),
//                         SizedBox(
//                           width: 15,
//                         ),
//
//                       ],
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     AddShipmentTextFields(
//                       errorBorderColor: Colors.red,
//
//                       labelText: 'Address',
//                       errorText: 'Invalid Address',
//                       hintText: 'Enter Your Address',
//                       textEditingController: emailcontroller,
//                     ),
//
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 12.5,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Color(0xff6a040f).withOpacity(0.02),
//                   borderRadius: BorderRadius.circular(10),
//                   border:
//                   Border.all(color: Color(0xff007f5f), width: 2),
//                 ),
//                 width: 360,
//                 height: 395,
//                 child: Column(
//                   children: [
//                     SizedBox(height: 15,),
//                     Container(
//                       width: 90,
//                       height: 90,
//                       child: Image.asset(
//                         'assets/images/icons/destenation.png',
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                     SizedBox(height: 20,),
//
//                     Row(
//                       children: [
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Expanded(
//                             child: MyDropDownMenu(
//                               enabledBorderColor: Color(0xff007f5f),
//                               initialSelectedItem: "",
//                               hintText: 'Country',
//                               typeList: [
//                                 'aerial',
//                                 'overland',
//                                 'neutical',
//                               ],
//                             )),
//                         SizedBox(
//                           width: 7.5,
//                         ),
//                         Expanded(
//                             child: MyDropDownMenu(
//                               enabledBorderColor: Color(0xff007f5f),
//                               initialSelectedItem: "",
//                               hintText: 'City',
//                               typeList: [
//                                 'aerial',
//                                 'overland',
//                                 'neutical',
//                               ],
//                             )),
//                         SizedBox(
//                           width: 15,
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 10,),
//                     Row(
//                       children: [
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Expanded(
//                             child: MyDropDownMenu(
//                               enabledBorderColor: Color(0xff007f5f),
//                               initialSelectedItem: "",
//                               hintText: 'Region',
//                               typeList: [
//                                 'aerial',
//                                 'overland',
//                                 'neutical',
//                               ],
//                             )),
//                         SizedBox(
//                           width: 15,
//                         ),
//
//                       ],
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     AddShipmentTextFields(
//                       errorBorderColor: Colors.red,
//
//                       labelText: 'Address',
//                       errorText: 'Invalid Address',
//                       hintText: 'Enter Your Address',
//                       textEditingController: emailcontroller,
//                     ),
//
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 7.5,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
