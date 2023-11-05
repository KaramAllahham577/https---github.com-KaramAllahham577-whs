import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/product/product_details_controller.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';
import 'package:untitled3/Keeper/core/constant/image_asset.dart';
import 'package:untitled3/Keeper/view/screen/product/add_product_brach_2.dart';
import 'package:untitled3/Keeper/view/screen/product/add_product_branch.dart';
import 'package:untitled3/Keeper/view/screen/product/edit_product.dart';
import 'package:untitled3/Keeper/view/screen/product/export_branch.dart';
import 'package:untitled3/Keeper/view/screen/product/table.dart';

import '../../widget/product/custom_Icon.dart';
import '../../widget/product/custom_container1.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    Get.put(ProductDetailsController());
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
            GetBuilder<ProductDetailsController>(
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
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0, vertical: 10),
                                          child: SizedBox(
                                            width: 150,
                                            child: OutlinedButton.icon(
                                              style: ButtonStyle(
                                                  padding: MaterialStateProperty.all(
                                                      const EdgeInsets.all(15)),
                                                  elevation:
                                                  MaterialStateProperty.all(5),
                                                  shape: MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(15),
                                                    ),
                                                  ),
                                                  backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.blueAccent)),
                                              onPressed: () {
                                                Get.to(AddProductBranch2());
                                              },
                                              icon: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                              label: const Text(
                                                "Add product",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0, vertical: 10),
                                          child: SizedBox(
                                            width: 150,
                                            child: OutlinedButton.icon(
                                              style: ButtonStyle(
                                                  padding: MaterialStateProperty.all(
                                                      const EdgeInsets.all(15)),
                                                  elevation:
                                                  MaterialStateProperty.all(5),
                                                  shape: MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(15),
                                                    ),
                                                  ),
                                                  backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.redAccent)),
                                              onPressed: () {
                                                 Get.bottomSheet(
                                                  Container(
                                                    color: Colors.white,
                                                    child: Wrap(
                                                      children: <Widget>[
                                                        ListTile(
                                                          leading: const Icon(Icons.import_export),
                                                          title: const Text('Export to another Branch'),
                                                          onTap: () async {
                                                            Get.to(ExportBranch());


                                                          },
                                                        ),
                                                        ListTile(
                                                          leading: const Icon(Icons.import_export),
                                                          title: const Text('export to Customer'),
                                                          onTap: () async {

                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                              icon: const Icon(
                                                Icons.import_export,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                              label: const Text(
                                                "Export product",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                     CustomContainer1(title: "Quantity", text: '${controller.productDetails.value!.quanty}'),
                                     CustomContainer1(
                                        title: "price", text: '${controller.productDetails.value!.details!.price}\$'),
                                     CustomContainer1(
                                        title: "Manufacturer", text: '${controller.productDetails.value!.details!.products!.producingCompanies!.companyName}'),

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
                                            "${controller.productDetails.value!.details!.price}",
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
                                           Get.to( TableProduct());
                                          }, child: const Text("More Details"))
                                      ],
                                    ),
                                    Container(
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
                                                rows: const [
                                                  DataRow(cells: [
                                                    DataCell(Text(
                                                      "Entry",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )),
                                                    DataCell(Text(
                                                      "2020/1/1",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )),
                                                    DataCell(Text(
                                                      "20\$",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )),
                                                    DataCell(Text(
                                                      "20\$",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )),
                                                  ]),
                                                  DataRow(cells: [
                                                    DataCell(Text(
                                                      "Entry",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )),
                                                    DataCell(Text(
                                                      "2020/1/1",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )),
                                                    DataCell(Text(
                                                      "20\$",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )),
                                                    DataCell(Text(
                                                      "20\$",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )),
                                                  ]),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
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
