import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/General/controller/product/product_details_controller.dart';
import 'package:untitled3/General/view/screen/product/table.dart';
import 'package:untitled3/Keeper/controller/product/product_details_controller.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';
import 'package:untitled3/Keeper/core/constant/image_asset.dart';
import 'package:untitled3/Keeper/view/screen/product/add_product_branch.dart';
import 'package:untitled3/Keeper/view/screen/product/edit_product.dart';
import 'package:untitled3/Keeper/view/screen/product/export_branch.dart';
import 'package:untitled3/Keeper/view/screen/product/table.dart';

import '../../../../Keeper/controller/product/table.dart';
import '../../../../Keeper/view/widget/product/custom_Icon.dart';
import '../../../../Keeper/view/widget/product/custom_container1.dart';
import 'add_product_brach_2.dart';



class ProductDetailsGeneral extends StatelessWidget {
  const ProductDetailsGeneral({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    TableController controller = Get.put(TableController());



    DataRow resultsAPI(index, data) {
      return DataRow(
        cells: <DataCell>[
          DataCell(
            Text(
              "${controller.productList[index].state}",
              style: const TextStyle(color: Colors.white),
            ),
          ), //add name of your columns here
          DataCell(
            Text('${controller.productList[index].dateIn}',
                style: const TextStyle(color: Colors.white)),
          ),
          DataCell(
            Text(
              ' ${controller.productList[index].inQuantity}',
              style: const TextStyle(color: Colors.white),
            ),
          ),
          DataCell(
            Text(' ${controller.productList[index].totalCost}\$',
                style: const TextStyle(color: Colors.white)),
          )
        ],
      );
    }
    Get.put(ProductDetailsGeneralController());
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Product Details"),
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.all(5),
              child: CustomIcon(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
            actions: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: CustomIcon(
                      icon: const Icon(Icons.edit_calendar),
                      onPressed: () {
                        Get.to(const ProductDetailsEdit());
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  )
                ],
              )
            ],
          ),
          body:
            GetBuilder<ProductDetailsGeneralController>(
              builder: (controller){
                if(controller.isLoading){
                  return Center(child: CircularProgressIndicator(),);
                }

              else{
                  return

                    Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Image.asset(
                            ImageAsset.meatProduct,
                            fit: BoxFit.cover,
                          ),
                        ),
                        DraggableScrollableSheet(
                          initialChildSize: 0.6,
                          maxChildSize: 1,
                          minChildSize: 0.6,
                          builder: (BuildContext context,
                              ScrollController scrollController) {
                            return Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff6a040f), width: 2.5),
                                color: const Color(0xff161a1d),
                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(17.5),topRight: Radius.circular(17.5)),
                              ),
                              child: SingleChildScrollView(
                                controller: scrollController,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(top: 10, bottom: 25),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 5,
                                            decoration: BoxDecoration(
                                              color: AppColor.color3.withOpacity(0.5),
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),

                                     CustomContainer1(title: "Quantity", text: '${controller.productDetails.value!.data!.boxQuantity!}'),

                                      CustomContainer1(
                                         title: "Weight", text: '${controller.productDetails.value!.data!.weight}'),
                                    CustomContainer1(
                                         title: "Name", text: '${controller.productDetails.value!.data!.productName}'),

                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Description:",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 20),
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            "${controller.productDetails.value!.data!.description!}",
                                            style: const TextStyle(
                                                color: Colors.white70, fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children:  [
                                        const Text(
                                          "Matter Movement:",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 20),
                                        ),
                                        const Spacer(),
                                        TextButton(onPressed: (){
                                           Get.to( TableProductGeneral());
                                          }, child: const Text("More Details"))
                                      ],
                                    ),
                                    GetBuilder<TableController>(builder: (controller){
                                      if(controller.isLoading){
                                        return Center(child: CircularProgressIndicator(),);
                                      }else
                                      {
                                        return             Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 10),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(height: 10),
                                                Theme(
                                                  data: Theme.of(context).copyWith(
                                                    dividerColor: AppColor
                                                        .color3, // Change divider color here
                                                  ),
                                                  child: DataTable(
                                                    dataRowHeight: 50,
                                                    dividerThickness: 3,
                                                    columns: const <DataColumn>[
                                                      DataColumn(
                                                          label: Text(
                                                            "stat ",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 20),
                                                          )),
                                                      DataColumn(
                                                          label: Text(
                                                            "date ",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 20),
                                                          )),
                                                      DataColumn(
                                                          label: Text(
                                                            "Quantity ",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 20),
                                                          )),
                                                      DataColumn(
                                                          label: Text(
                                                            "price ",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 20),
                                                          ))
                                                    ],
                                                    rows: List.generate(
                                                      1,
                                                          (index) => resultsAPI(
                                                        index,
                                                        controller.productList,
                                                      ),
                                                    )
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      }
                                    })
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    );
                }
              },
            )



          ),
    );
  }
}
