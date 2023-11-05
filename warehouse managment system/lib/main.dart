import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get_storage/get_storage.dart';
import 'package:untitled3/General/view/screen/equipments/add_equipment.dart';
import 'package:untitled3/Keeper/view/screen/auth/register_page.dart';
import 'package:untitled3/Keeper/view/screen/categories/show-categories.dart';
import 'package:untitled3/Keeper/views1/screen/pageviews/pageviewmanager.dart';
import 'package:untitled3/binding.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';
import 'package:untitled3/Keeper/data/datasource/static/static.dart';

import 'package:untitled3/Keeper/controller/categories/test20.dart';


import 'package:untitled3/test4.dart';

import 'package:untitled3/Keeper/view/Address.dart';


import 'package:untitled3/Keeper/view/homepage.dart';
import 'package:untitled3/Keeper/view/screen/branch/branches.dart';
import 'package:untitled3/Keeper/view/screen/product/add_product.dart';
import 'package:untitled3/Keeper/view/screen/categories/inner_categories.dart';
import 'package:untitled3/Keeper/view/screen/branch/branch_detalis.dart';


import 'General/view/screen/branch/branches.dart';
import 'General/view/screen/categories/show-categories_general.dart';
import 'General/view/screen/employee/view-employee.dart';
import 'General/view/screen/equipments/bracnh.dart';
import 'General/view/screen/equipments/show_equipments.dart';
import 'General/view/screen/homepage.dart';
import 'General/view/screen/pendingrequests.dart';
import 'General/view/screen/producing_companies/showproducingcompanies.dart';
import 'General/view/screen/product/add_product.dart';
import 'General/view/screen/product/table.dart';
import 'General/view/screen/shipment/show_shipment..dart';

import 'General/view/screen/storage_location/storinglocations.dart';
import 'Keeper/view/screen/employee/view-employee.dart';
import 'Keeper/view/screen/shipment/shipment_path.dart';
import 'Keeper/view/screen/storage_location/storinglocations.dart';

import 'Keeper/views1/screen/add_equipment.dart';
import 'Keeper/views1/screen/loginpage.dart';


void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarColor: Color(0xff161a1d)));
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: const ColorScheme.light(
                primary: AppColor.color2, secondary: AppColor.color2),
            buttonTheme: const ButtonThemeData(buttonColor: AppColor.color2),
            primaryColor: Colors.red,
            // colorScheme:
            //     ColorScheme.fromSwatch().copyWith(secondary: Colors.red[500]),
            appBarTheme: const AppBarTheme(
              color: AppColor.backGround,
            )),
        initialBinding: InitialBindings(),
        home:  PageViewManager

          ());
  }
}

class InnerCategoryPage extends StatelessWidget {
  final List<CategoryModel> categories;

  InnerCategoryPage(this.categories);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inner Category Page'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return ListTile(
            title: Text(category.categoryName),
            subtitle: Text('ID: ${category.id}'),
          );
        },
      ),
    );
  }
}

