import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/General/controller/categories/show_categories_controller_general.dart';
import 'package:untitled3/General/view/screen/employee/view-employee.dart';
import 'package:untitled3/General/view/screen/product/product_detalis.dart';
import 'package:untitled3/Keeper/controller/categories/show_categories_controller.dart';

import '../../../../Keeper/controller/categories/test20.dart';
import '../../../../Keeper/controller/test_controller.dart';
import '../../../../Keeper/core/constant/app_color.dart';
import '../../../../Keeper/core/constant/image_asset.dart';
import '../../../../Keeper/view/widget/product/card_product.dart';
import '../../../controller/branch/branch_betails_controller.dart';
import '../../../controller/branch/show_product_branch_general_controller.dart';
import '../../../controller/categories/test20.dart';






class BranchDetailsGeneral extends StatelessWidget {
  const BranchDetailsGeneral({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryController controller1= Get.put(CategoryController());
    Get.put(BranchDetailsGeneralController());
    Get.put(ShowProductBranchControllerGeneral());
    StorageController box = StorageController();
    // Get.put(ShowEmployeeController());
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GetBuilder<BranchDetailsGeneralController>(
          builder: (controller) {
          if (controller.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
         else{

           return  CustomScrollView(
            controller: controller.scrollController,
            // attach ScrollController to CustomScrollView
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                stretch: true,
                pinned: true,
                scrolledUnderElevation: 10,
                expandedHeight: 420,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,

                  background: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 60,
                          child: Expanded(
                            child: InkWell(
                              onTap: (){
                                box.storage("idBranch12",controller.branchInfo.value!.id );
                                Get.to(ShowEmployeeBranchGeneral());},
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                width: 400,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xff6a040f), width: 2.5),
                                  color: const Color(0xff161a1d),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: const [
                                    Text(
                                      ' Show Employee',
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.white),
                                    ),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios,color: AppColor.color2,),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 60,
                          child: Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              width: 400,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff6a040f), width: 2.5),
                                color: const Color(0xff161a1d),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:  Text(
                                'Phone:${controller.branchInfo.value!.phoneNumber}',
                                style: const TextStyle(
                                    fontSize: 24, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 60,
                          child: Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              width: 400,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff6a040f), width: 2.5),
                                color: const Color(0xff161a1d),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:  Text(
                                'Location:${controller.branchInfo.value!.address!.regions!.region}',
                                style: const TextStyle(
                                    fontSize: 24, color: Colors.white),
                              ),
                            ),
                          ),
                        ),


                        const SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(

                              width: 100,
                              height: 80,
                              decoration: BoxDecoration(

                                color: Colors.grey[900]?.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: AppColor.backGround, width: 3),
                              ),
                              child: Expanded(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:  [
                                      Text(
                                        controller.branchInfo.value!.space.toString(),
                                        style: const TextStyle(
                                            fontSize: 24, color: Colors.white),
                                      ),
                                      const Text(
                                        'Space',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.grey[900]?.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: AppColor.backGround, width: 3),
                              ),
                              child: Column(
                                children:  const [
                                  Text(
                                   ' ',
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white),
                                  ),
                                  Text(
                                    'section Max Capacity',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: const [
                                Text(
                                  '2%',
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.white),
                                ),
                                Text(
                                  'Free Space',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(


                child: Container(
                  color: const Color(0xff161a1d),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 50, left: 5),
                        height: 30,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                children: const [
                                  Text(
                                    "Products",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Spacer(),
                                  // GetBuilder<ShowEmployeeController>(
                                  //     builder: (controller1) {
                                  //       return SizedBox(
                                  //         height: 50,
                                  //         child: DropdownButton<String>(
                                  //           dropdownColor: const Color(0xFF6A040F),
                                  //           value: controller1.defaultValue,
                                  //           items: controller1.dropdownItems
                                  //               .map((String item) {
                                  //             return DropdownMenuItem<String>(
                                  //               value: item,
                                  //               child: Text(
                                  //                 item,
                                  //                 style: const TextStyle(
                                  //                     color: Colors.white70),
                                  //               ),
                                  //             );
                                  //           }).toList(),
                                  //           onChanged: (newValue) {
                                  //             controller1.defaultValue = newValue;
                                  //             if (newValue == 'All') {
                                  //               controller1.isKeeper = true;
                                  //               controller1.update();
                                  //             } else {
                                  //               controller1.isKeeper = false;
                                  //             }
                                  //
                                  //             controller1.update();
                                  //           },
                                  //         ),
                                  //       );
                                  //     })
                                ],
                              ),
                            ),
                            Positioned(
                              right: 298,
                              left: 6,
                              bottom: 0,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: AppColor.color0,
                                ),
                                margin: const EdgeInsets.only(right: 5),
                                height: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    GetBuilder<ShowProductBranchControllerGeneral>(builder: (controller){
                         if(controller.productList.isEmpty){
                           return Center(child: Text("There are no Products",style: TextStyle(color: Colors.white,fontSize: 20),),);

                      }
                         else{
                           return GridView.builder(
                             physics: const NeverScrollableScrollPhysics(),
                             shrinkWrap: true,
                             padding: const EdgeInsets.all(10),
                             itemCount: controller.productList.length,
                             gridDelegate:
                             const SliverGridDelegateWithFixedCrossAxisCount(
                               crossAxisCount: 1,
                               crossAxisSpacing: 16,
                               mainAxisSpacing: 10,
                             ),
                             itemBuilder: (context, index) {
                               final product=controller.productList[index];
                               return InkWell(
                                 onTap: (){ box.storage(
                                     "idProG", controller.productList[index].id);
                                 Get.to(const ProductDetailsGeneral());},
                                 child: CardProduct(type: product.productName, price: product.branchProducts![0].price.toString()  , quantity: product.branchProducts![0].inQuantity.toString(), image: product.image,),
                               );
                             },
                           );
                         }
                    })
                    ],
                  ),
                ),
              ),
            ],
          );
              }}
        ),
      ),
    );
  }
}
