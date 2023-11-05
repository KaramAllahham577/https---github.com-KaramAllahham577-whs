import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/product/show_product_controller.dart';
import 'package:untitled3/Keeper/controller/test_controller.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';
import 'package:untitled3/Keeper/core/constant/image_asset.dart';
import 'package:untitled3/Keeper/view/screen/product/add_product_branch.dart';
import 'package:untitled3/Keeper/view/screen/product/product_detalis.dart';
import 'package:untitled3/Keeper/view/screen/employee/view-employee.dart';
import 'package:untitled3/Keeper/view/widget/product/card_product.dart';

import '../../../controller/categories/test20.dart';
import '../../../controller/show-employee-controller.dart';

import '../../widget/custom_speeddial.dart';
import '../categories/search_categories.dart';

class ShowProduct2 extends StatelessWidget {
  const ShowProduct2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CategoryController());
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


        GetBuilder<CategoryController >(builder: (controller) {
          if(controller.isLoading.value){
            return const Center(child: CircularProgressIndicator());
          }
          else{

          if(controller.productList1.isEmpty){
            return const Center(child: Text("no Product to Show",style: TextStyle(color: Colors.white,fontSize: 30),),);
          }else{
            return ListView.builder(
              itemCount: controller.productList1.length,
              itemBuilder: (BuildContext context, int index) {
                final product= controller.productList1;
                return InkWell(
                  onTap: () {
                    box.storage("idProduct", product[index].id);
                    box.storage("idProductss", product[index].productId);
                    print('/////////////////////////////////////////////////////${box.reade("idProductss")}');
                    Get.to(const ProductDetails());
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
            );
          }

          }

        }),
       );
  }
}
