import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/General/view/screen/equipments/show_equipments.dart';

import '../../../../Keeper/controller/test_controller.dart';
import '../../../../Keeper/core/constant/app_color.dart';
import '../../../../Keeper/core/function/validator.dart';
import '../../../../Keeper/view/Address.dart';
import '../../../../Keeper/view/widget/auth/custom_text_field.dart';
import '../../../controller/branch/add_branch_controller.dart';
import '../../../controller/branch/show_branch_controller.dart';



class BranchesGeneral extends StatelessWidget {
  const BranchesGeneral({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //411
    final box=Get.put(StorageController());
    Get.put(ShowBranchGeneralController());
    Get.put(AddBranchController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Branches"),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff161a1d),
      body:GetBuilder<ShowBranchGeneralController>(builder: (controller){
        if(controller.isLoading){
          return const Center(child: CircularProgressIndicator(),);
        }else{
          return ListView.builder(
              itemCount: controller.branchList.length ,
              itemBuilder: (context,index){
                final branch =controller.branchList[index];
                return InkWell(
                  onTap: (){
                    box.storage("idBranch12",branch.id );

                    print(box.reade("idBranch12"));
                    Get.to( ShowEquipmentsGeneral());
                  },
                  child: Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      width: 300,
                      height: 300,
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
      },),
      floatingActionButton:
      GetBuilder<AddBranchController>(
          builder: (controller) {
            return FloatingActionButton(
                onPressed: () {
                  Get.defaultDialog(
                    actions: [
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColor.color2), // Set the background color
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                          ),
                          onPressed: () {
                            controller.postData();
                            Get.back();
                          },
                          child: const Text(
                            "Add",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                    ],
                    backgroundColor: AppColor.backGround,
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CustomTextField(
                              label: "name ",
                              hint: "enter Phone Number",
                              icon: const Icon(Icons.phone),
                              textInputType: TextInputType.phone,
                              validator: (val) {
                                return validInput(val!, 3, '');
                              },
                              myController: controller.phoneNumber),
                          AddressDropdown(),
                          const SizedBox(height: 10,),
                          CustomTextField(
                              label: "name ",
                              hint: "enter Space",
                              icon: const Icon(Icons.space_bar_rounded),
                              textInputType: TextInputType.phone,
                              validator: (val) {
                                return validInput(val!, 3, '');
                              },
                              myController: controller.space),
                          CustomTextField(
                              label: "name ",
                              hint: "enter The maximum capacity of the section",
                              icon: const Icon(Icons.space_dashboard),
                              textInputType: TextInputType.phone,
                              validator: (val) {
                                return validInput(val!, 3, '');
                              },
                              myController: controller.spaceSection),

                        ],
                      ),
                    ),
                    title: " Add Branch ",
                    titleStyle: const TextStyle(color: Colors.white),
                  );
                },
                tooltip: "Add Branch",
                child: const Icon(Icons.add));
          }),
    );
  }
}
