// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:untitled3/core/constant/app_color.dart';
// import 'package:untitled3/view/widget/storage_location/storingLocationsCard.dart';
//
// import '../../../controller/storage_location/main_section_controller.dart';
// import 'SecondryStoringLocations.dart';
//
// class ShowAllSection extends StatelessWidget {
//   const ShowAllSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     AppColor a = AppColor();
//     Get.put(AllSectionController());
//     return Scaffold(
//       backgroundColor: const Color(0xFF161A1D),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF161A1D),
//         automaticallyImplyLeading: false,
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back_rounded,
//             color: Colors.white,
//             size: 30,
//           ),
//           onPressed: () {},
//         ),
//         title: const Text(
//           'Location A',
//           style: TextStyle(
//             fontFamily: 'Outfit',
//             color: Colors.white,
//             fontSize: 22,
//           ),
//         ),
//         centerTitle: true,
//         elevation: 2,
//       ),
//       body: SafeArea(
//         top: true,
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Container(
//               width: 411,
//               height: 50,
//               decoration: const BoxDecoration(
//                 color: Color(0xFF161A1D),
//               ),
//               child: Row(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Opacity(
//                     opacity: 0,
//                     child: Container(
//                       width: 90,
//                       height: 100,
//                       decoration: const BoxDecoration(
//                         color: Colors.transparent, // Change to your color
//                       ),
//                     ),
//                   ),
//                   Row(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Container(
//                         width: 20,
//                         height: 20,
//                         decoration: const BoxDecoration(
//                           color: Color(0xFF6A040F),
//                           shape: BoxShape.circle,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
//                     child: Text(
//                       'Unavailable',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontFamily: 'Readex Pro',
//                           fontWeight: FontWeight.w300,
//                           fontSize: 20),
//                     ),
//                   ),
//                   Opacity(
//                     opacity: 0,
//                     child: Container(
//                       width: 20,
//                       height: 100,
//                       decoration: const BoxDecoration(
//                         color: Colors.transparent, // Change to your color
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: 20,
//                     height: 20,
//                     decoration: const BoxDecoration(
//                       color: Color(0xFF004834),
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
//                     child: Text(
//                       'available',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontFamily: 'Readex Pro',
//                         fontWeight: FontWeight.w300,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             GetBuilder<AllSectionController>(builder: (controller) {
//               if (controller.isLoading) {
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               } else {
//                 return Expanded(
//                   child: Container(
//                     width: 496,
//                     decoration: const BoxDecoration(
//                       color: Color(0xFF161A1D),
//                     ),
//                     child: ListView.builder(
//                       padding: EdgeInsets.zero,
//                       scrollDirection: Axis.vertical,
//                       itemCount: controller.availableList.length +
//                           controller.unavailableList.length,
//                       // Replace with your actual item count
//                       itemBuilder: (BuildContext context, int index) {
//                         if (index < controller.availableList.length) {
//                           print(index);
//                           return GestureDetector(
//                             onTap: () {
//                               Get.to(const SecondaryStoringLocations());
//                             },
//                             child: StoringLocationsCard(
//                               name:
//                               ' ${controller.availableList[index].locationNum}',
//                               totalQuantity: controller
//                                   .availableList[index].availableQuantity!,
//                               // Replace with actual total quantity
//                               borderColor: const Color(0xFF004834),
//                             ),
//                           );
//                         } else {
//                           final i = index - controller.availableList.length;
//                           print(i);
//                           final section = controller.unavailableList[i];
//                           return GestureDetector(
//                             onTap: () {
//                               Get.to(const SecondaryStoringLocations());
//                             },
//                             child: StoringLocationsCard(
//                               name: ' ${section.locationNum}',
//                               totalQuantity: section.availableQuantity!,
//                               // Replace with actual total quantity
//                               borderColor: const Color(0xFF6A040F),
//                             ),
//                           );
//                         }
//                       },
//                     ),
//                   ),
//                 );
//               }
//             })
//           ],
//         ),
//       ),
//     );
//   }
// }
