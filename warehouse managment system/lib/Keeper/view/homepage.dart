import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/view/screen/categories/show-categories.dart';
import 'package:untitled3/Keeper/view/screen/employee/view-employee.dart';
import 'package:untitled3/Keeper/view/screen/product/add_product_branch.dart';
import 'package:untitled3/Keeper/view/screen/storage_location/storinglocations.dart';
import 'package:untitled3/Keeper/views1/screen/show_orders.dart';

import '../views1/screen/add_equipment.dart';
import 'screen/branch/branches.dart';
import '../views1/screen/show_equipments.dart';
import '../views1/screen/show_shipment..dart';
import 'screen/shipment/add_shipment.dart';


import '../views/statistics.dart';

import 'homepagebuttoun.dart';


class HomePage13 extends StatelessWidget {
  HomePage13({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //411
    double screenheight = MediaQuery.of(context).size.height; //707

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff161a1d),
          elevation: 1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Home",
                style: TextStyle(
                  fontFamily: "Bruno Ace SC",
                  fontSize: screenWidth / 13.7,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          leading:  IconButton(onPressed: () { Get.back(); }, icon:Icon(Icons.arrow_back,)),
          centerTitle: true,

        ),
        backgroundColor: const Color(0xff161a1d),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: screenheight / 141.4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      GestureDetector(
                        onTap: ()  {
                          Get.to(const AddProductBranch());

                        },
                        child: HomePageButtouns(
                            is_in_top_or_down: false,
                            borderWidth: 2,
                            imageName: 'add_product',
                            paddingAmount_s:
                                screenWidth / 117.42857142857142857142857142857,
                            paddingAmount_b: screenheight / 1422,
                            paddingAmount_e:
                                screenWidth / 269.33333333333333333333333333333,
                            paddingAmount_t: 5),
                      ),
                      GestureDetector(
                        onTap: () {
                           Get.to(AddEquipment());
                        },
                        child: HomePageButtouns(
                            is_in_top_or_down: false,
                            borderWidth: 2,
                            imageName: 'add_machine',
                            paddingAmount_s:
                                screenWidth / 117.42857142857142857142857142857,
                            paddingAmount_b: screenheight / 1422,
                            paddingAmount_e:
                                screenWidth / 269.33333333333333333333333333333,
                            paddingAmount_t: 5),
                      ),
                      HomePageButtouns(
                          is_in_top_or_down: false,
                          borderWidth: 2,
                          imageName: 'add_categorie',
                          paddingAmount_s:
                              screenWidth / 117.42857142857142857142857142857,
                          paddingAmount_b: screenheight / 1422,
                          paddingAmount_e:
                              screenWidth / 269.33333333333333333333333333333,
                          paddingAmount_t: 5),
                      GestureDetector(
                        onTap: () {
                          Get.to(AddShipment());
                        },
                        child: HomePageButtouns(
                            is_in_top_or_down: false,
                            borderWidth: 2,
                            imageName: 'add_shipment',
                            paddingAmount_s: screenWidth / 110,
                            paddingAmount_b: 0,
                            paddingAmount_e: screenWidth / 110,
                            paddingAmount_t: 5),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(screenWidth / 51.375),
                  child: Column(
                    children: [
                      StaggeredGrid.count(
                        crossAxisCount: 6,
                        mainAxisSpacing: 0,
                        crossAxisSpacing: 0,
                        children: [
                          StaggeredGridTile.count(
                            crossAxisCellCount: 3,
                            mainAxisCellCount: 5,
                            child: GestureDetector(
                              onTap: () {
                                 Get.to(const ShowBranches());
                              },
                              child: HomePageButtouns(
                                  is_in_top_or_down: true,
                                  text_down_image: 'Branches',
                                  image_container_height: 225,
                                  textSize: 27.5,
                                  borderWidth: 4,
                                  imageName: 'warehouse (3)',
                                  paddingAmount_s: screenWidth / 41.1,
                                  paddingAmount_b: screenheight / 71.1,
                                  paddingAmount_e: screenWidth / 41.1,
                                  paddingAmount_t: screenheight / 71.1),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 3,
                            mainAxisCellCount: 4,
                            child: GestureDetector(
                              onTap: () {
                                Get.to(()=> const Statistics());
                              },
                              child: HomePageButtouns(
                                  is_in_top_or_down: true,
                                  borderWidth: 4,
                                  image_container_width: 150,
                                  image_container_height: 190,
                                  textSize: 22.5,
                                  text_down_image: "Statistics",
                                  imageName: 'statistics',
                                  paddingAmount_s: screenWidth /
                                      117.42857142857142857142857142857,
                                  paddingAmount_b: screenheight / 1422,
                                  paddingAmount_e: screenWidth /
                                      269.33333333333333333333333333333,
                                  paddingAmount_t: screenheight / 1422),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 3,
                            mainAxisCellCount: 3,
                            child: InkWell(
                               onTap: (){Get.to(const ShowEmployee());},
                              child: HomePageButtouns(
                                  is_in_top_or_down: true,
                                  borderWidth: 4,
                                  imageName: 'manager',
                                  image_container_width: 130,
                                  image_container_height: 140,
                                  textSize: 22.5,
                                  text_down_image: 'Employees',
                                  paddingAmount_s: 0,
                                  paddingAmount_b: screenheight / 176.75,
                                  paddingAmount_e: screenWidth / 82.2,
                                  paddingAmount_t: screenheight / 176.75),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 3,
                            mainAxisCellCount: 5,
                            child: GestureDetector(
                              onTap: () {
                                 Get.to(Show_Shipment());
                              },
                              child: HomePageButtouns(
                                  is_in_top_or_down: true,
                                  text_down_image: 'Shipments',
                                  image_container_height: 225,
                                  image_container_width: 175,
                                  textSize: 27.5,
                                  borderWidth: 4,
                                  imageName: 'container (5)',
                                  paddingAmount_s: screenWidth / 41.1,
                                  paddingAmount_b: screenheight / 71.1,
                                  paddingAmount_e: screenWidth / 41.1,
                                  paddingAmount_t: screenheight / 71.1),
                            ),
                          ),
                          StaggeredGridTile.count(
                              crossAxisCellCount: 3,
                              mainAxisCellCount: 3,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(ShowOrders());
                                },
                                child: HomePageButtouns(
                                    is_in_top_or_down: true,
                                    borderWidth: 4,
                                    imageName: 'orders',
                                    image_container_width: 140,
                                    image_container_height: 147.5,
                                    textSize: 22.5,
                                    text_down_image: 'Orders',
                                    paddingAmount_s: screenWidth /
                                        117.42857142857142857142857142857,
                                    paddingAmount_b:
                                        screenheight / screenheight,
                                    paddingAmount_e: screenWidth / 137,
                                    paddingAmount_t: screenheight /
                                        235.66666666666666666666666666667),
                              )),
                          StaggeredGridTile.count(
                              crossAxisCellCount: 6,
                              mainAxisCellCount: 3,
                              child: GestureDetector(
                                onTap: (){
                                  Get.to(const StoringLocations( ));
                                },
                                child: HomePageButtouns(
                                    is_in_top_or_down: true,
                                    borderWidth: 4,
                                    imageName: 'storinglocations',
                                    image_container_width: 170,
                                    image_container_height: 134,
                                    textSize: 22.5,
                                    text_down_image: 'Storing Locations',
                                    paddingAmount_s: screenWidth / 82.2,
                                    paddingAmount_b: screenheight / 88.875,
                                    paddingAmount_e: screenWidth /
                                        58.71428571428571428571428571428,
                                    paddingAmount_t: screenheight / 88.875),
                              )),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 3,
                            mainAxisCellCount: 3,
                            child: InkWell(
                              onTap: (){Get.to(const ShowCategories());},
                              child: HomePageButtouns(
                                  is_in_top_or_down: true,
                                  borderWidth: 4,
                                  imageName: 'categories (1)',
                                  image_container_width: 120,
                                  image_container_height: 134,
                                  textSize: 22.5,
                                  text_down_image: 'Categories',
                                  paddingAmount_s: screenWidth / 20,
                                  paddingAmount_b: screenheight / 88.875,
                                  paddingAmount_e: screenWidth /
                                      58.71428571428571428571428571428,
                                  paddingAmount_t: screenheight / 88.875),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 3,
                            mainAxisCellCount: 3,
                            child: GestureDetector(
                              onTap: (){
                                Get.to(
                                     Show_Equipments()
                                );
                              },
                              child: HomePageButtouns(
                                  is_in_top_or_down: true,
                                  borderWidth: 4,
                                  imageName: 'equipments',
                                  image_container_width: 120,
                                  image_container_height: 134,
                                  textSize: 22.5,
                                  text_down_image: 'Equipments',
                                  paddingAmount_s: screenWidth / 20,
                                  paddingAmount_b: screenheight / 88.875,
                                  paddingAmount_e: screenWidth /
                                      58.71428571428571428571428571428,
                                  paddingAmount_t: screenheight / 88.875),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
