import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/categories/show_categories_controller.dart';

import '../../../controller/categories/test20.dart';
import '../../../controller/branch/branch_betails_controller.dart';
import '../../../controller/show-employee-controller.dart';
import '../../../controller/test_controller.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/image_asset.dart';





class BranchDetails extends StatelessWidget {
  const BranchDetails({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryController controller1= Get.put(CategoryController());
    Get.put(BranchDetailsController());
    Get.put(ShowCategoriesController());
    StorageController box = StorageController();
    // Get.put(ShowEmployeeController());
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GetBuilder<BranchDetailsController>(
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
                              child: controller.branchInfo.value!.employees!.isNotEmpty? Text(
                                ' Keeper\'s Name:${controller.branchInfo.value!.employees![0].employeeName}',
                                style: const TextStyle(
                                    fontSize: 24, color: Colors.white),
                              ):const Text("Keeper\'s Name:no employee", style: TextStyle(
                                  fontSize: 24, color: Colors.white),
                              )
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
                              child: const Text(
                                ' Keeper\'s Name:',
                                style: TextStyle(
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
                                    "Categories",
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
                    GetBuilder<ShowCategoriesController>(builder: (controller){
                      return   GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(10),
                        itemCount: controller.categoriesList.length,
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: (){ box.storage(
                                "idcategory", controller.categoriesList[index].id);
                            controller1.fetchCategories();},
                            child: Card(
                              color: Colors.white10,
                              elevation: 20,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17),
                                side: const BorderSide(
                                    color: Color(0xff6a040f), width: 2.5),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(ImageAsset.meat),
                                  ),
                                   Text(
                                    controller.categoriesList[index].categoryName!,
                                    style: const TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
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
