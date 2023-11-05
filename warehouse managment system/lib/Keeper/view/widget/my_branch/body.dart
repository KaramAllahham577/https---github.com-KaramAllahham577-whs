import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/constant/image_asset.dart';

import '../../../core/constant/app_color.dart';
import '../../screen/home/branches_view.dart';
import 'header_with_search.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(

                      height: 200,
                      child: buildDashboardCard(
                        icon: Icons.storage,
                        label: 'Total Warehouses',
                        value: '',
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Container(
                        height: 200,
                        child: buildDashboardCard(
                          icon: Icons.add,
                          label: 'Add Product',
                          value: '',
                          color: Colors.white,
                        ),
                      ),
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(

                      height: 200,
                      width: 160,
                      child: buildDashboardCard(
                        icon: Icons.storage,
                        label: ' inventory',
                        value: '',
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Container(
                      height: 200,
                      width: 200,
                      child: buildDashboardCard(
                        icon: Icons.shopping_cart,
                        label: 'Total Orders',
                        value: '125',
                        color: Colors.white60,
                      ),
                    ),

                  ],
                ),
              ],
            ),
            const SizedBox(height: 16.0),
          
            const SizedBox(height: 16.0),



            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(

                    margin: const EdgeInsets.only(top: 50),
                    height: 24,
                    child: Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "Branches",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          left: 0,
                          bottom: 0,
                          child: Container(
                            margin: const EdgeInsets.only(right: 5),
                            color: AppColor.color0,
                            height: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(const BranchesView());
                        },
                        child: const Text("More")),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 252,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: size.width * 0.4,
                    margin: const EdgeInsets.only(top: 10, left: 20, bottom: 50),
                    child: Column(
                      children: [
                        Image.asset(ImageAsset.trueIcon),
                        GestureDetector(
                          onTap: () {

                          },

                          child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0, 10),
                                      blurRadius: 50,
                                      color: AppColor.color3.withOpacity(0.7),
                                    ),
                                  ]),
                              child: Row(
                                children: const [
                                  Text("data"),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios)
                                ],
                              )),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),



          ],
        ),
      ),
    );
  }

  Widget buildDashboardCard({
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 2.5, color: Color(0xff6a040f)),
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 48.0,
            color: const Color(0xff6a040f),
          ),
          const SizedBox(height: 16.0),
          Text(
            label,
            style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFB71C1C)),
          ),
          const SizedBox(height: 8.0),
          Text(
            value,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB71C1C),
            ),
          ),
        ],
      ),
    );
  }
}
