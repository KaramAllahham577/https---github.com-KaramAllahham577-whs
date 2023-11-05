import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:untitled3/General/controller/product/show_product_controller.dart';
import 'package:untitled3/General/view/screen/product/product_detalis.dart';
import 'package:untitled3/Keeper/controller/product/show_product_controller.dart';
import 'package:untitled3/Keeper/controller/test_controller.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';
import 'package:untitled3/Keeper/core/constant/image_asset.dart';
import 'package:untitled3/Keeper/view/screen/product/product_detalis.dart';
import 'package:untitled3/Keeper/view/screen/employee/view-employee.dart';
import 'package:untitled3/Keeper/view/widget/product/card_product.dart';

import '../../../../Keeper/view/widget/custom_speeddial.dart';



class ShowProductBranchGeneral extends StatelessWidget {
  const ShowProductBranchGeneral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ShowProductGeneralController());
    final box =Get.put(StorageController());

    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backGround,
          title: const Text(
            "Product",
            style: TextStyle(fontSize: 25),
          ),
          actions: [
            IconButton(
              onPressed: () {

              },
              icon: const Icon(Icons.search),
            ),
            const SizedBox(width: 10),
          ],
          centerTitle: true,
        ),
        backgroundColor: const Color(0xff161a1d),
        body:


        GetBuilder<ShowProductGeneralController>(builder: (controller) {
          if(controller.productList.isEmpty){
            return const Center(child: CircularProgressIndicator());
          }else{ return ListView.builder(
            itemCount: controller.productList.length,
            itemBuilder: (BuildContext context, int index) {
              final product= controller.productList;
              return InkWell(
                onTap: () {
                  // box.storage("idPro", product[index])
                  Get.to(const ProductDetailsGeneral());
                },
                child: Column(
                  children:  [
                    const SizedBox(
                      height: 10,
                    ),
                    CardProduct(
                        type: '${product[index].products!.productName}', price:'${product[index].price}', quantity: '${product[index].products!.size}', image: '',)
                  ],
                ),
              );
            },
          );}

        }),
        floatingActionButton: CustomSpeedDial(
          text: 'Product  ',
          onTapDel: () {
            Get.defaultDialog();
          },
          onTapAdd: () {},
        ));
  }
}
