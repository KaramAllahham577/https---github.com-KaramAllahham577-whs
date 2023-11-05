import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/branch/show_branch_controller.dart';
import '../../../controller/test_controller.dart';
import 'branch_detalis.dart';

class ShowBranches extends StatelessWidget {
  const ShowBranches({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //411
    final box=Get.put(StorageController());
    Get.put(ShowBranchController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Branches"),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff161a1d),
      body:GetBuilder<ShowBranchController>(builder: (controller){
       if(controller.isLoading){
         return Center(child: CircularProgressIndicator(),);
       }else{
         return ListView.builder(
             itemCount: controller.branchList.length ,
             itemBuilder: (context,index){
               final branch =controller.branchList[index];
               return InkWell(
                 onTap: (){
                   box.storage("idBranch1",branch.id );

                   print(box.reade("idBranch1"));
                   Get.to(const BranchDetails());
                 },
                 child: Card(
                   elevation: 20,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(12),
                   ),
                   child: Container(
                     width: 300,
                     height: 340,
                     decoration: BoxDecoration(
                       border: Border.all(color: const Color(0xff6a040f), width: 4),
                       color: const Color(0Xfff4f4f8),
                       borderRadius: BorderRadius.circular(12),
                     ),
                     child: SizedBox(
                       width: 400,
                       height: 200,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Padding(
                             padding: const EdgeInsetsDirectional.only(start: 25),
                             child: Column(
                               children: [
                                 ListTile(
                                   horizontalTitleGap: 0,
                                   leading: const Icon(
                                     Icons.location_on,
                                     color: Colors.black,
                                     size: 35,
                                   ),
                                   title: Text(
                                     branch.address!.address!,
                                     style: TextStyle(
                                       fontFamily: "Bruno Ace SC",
                                       fontSize: screenWidth / 16,
                                       color: Colors.black,
                                     ),
                                   ),
                                 ),
                                 ListTile(
                                   horizontalTitleGap: 5,
                                   leading: const Icon(
                                     Icons.phone,
                                     color: Colors.black,
                                     size: 35,
                                   ),
                                   title: Text(
                                     branch.phoneNumber!,
                                     style: TextStyle(
                                       fontFamily: "Bruno Ace SC",
                                       fontSize: screenWidth / 20,
                                       color: Colors.black,
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           Row(
                             children: [
                               Expanded(
                                 child: Container(
                                   width: 125,
                                   height: 90,
                                   margin: const EdgeInsets.all(10),
                                   padding: const EdgeInsetsDirectional.all(8),
                                   decoration: BoxDecoration(
                                     border: Border.all(color: Colors.black, width: 2),
                                     color: const Color(0Xfff4f4f8),
                                     borderRadius: BorderRadius.circular(12),
                                   ),
                                   child: Column(
                                     children:  [
                                       const SizedBox(
                                         height: 8,
                                       ),
                                       Text(
                                         textAlign: TextAlign.center,
                                         'Space : ${branch.space.toString()}',
                                         style: const TextStyle(
                                           fontFamily: "Bruno Ace SC",
                                           fontSize: 22.5,
                                           color: Colors.black,
                                         ),
                                       ),
                                       const SizedBox(
                                         height: 5,
                                       ),

                                     ],
                                   ),
                                 ),
                               ),

                             ],
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
               );

             });
       }
      },)
    );
  }
}
