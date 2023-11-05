import 'dart:convert';

import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';
import 'package:untitled3/Keeper/view/screen/categories/inner_categories.dart';
import 'package:untitled3/Keeper/view/screen/product/show2.dart';
import 'package:untitled3/Keeper/view/screen/product/show_product.dart';
import 'package:http/http.dart' as http;

import '../../../Keeper/controller/product/show_product_controller.dart';
import '../../../Keeper/controller/test_controller.dart';
import '../../data/remote/categroies/inner_categories.dart';
import '../../view/screen/product/show2.dart';





class   ApiResponseModel {
  ShowProductController controller =ShowProductController();
  bool? massage;
  final List<CategoryModel> data;
  final List<Products> data2;
  final int statusCode;

  ApiResponseModel( {
    required this.data2,
    required this.massage,
    required this.data,
    required this.statusCode,
  });

  factory ApiResponseModel.fromJson(Map<String, dynamic> json) {
  if(json['message']){
    return ApiResponseModel(
      massage: json['message'],
      data: List<CategoryModel>.from(
        json['data'].map((category) => CategoryModel.fromJson(category)),
      ),
      statusCode: json['status code'], data2: [],
    );
  }
     else{

    return ApiResponseModel(
      massage: json['message'],
      data2: List<Products>.from(
        json['data'].map((category) => Products.fromJson(category)),
      ),
      statusCode: json['status code'], data: [],
    );

     }
  }
}

class CategoryModel {
  final int id;
  final int parentId;
  final String categoryName;
  final DateTime createdAt;
  final DateTime updatedAt;

  CategoryModel({
    required this.id,
    required this.parentId,
    required this.categoryName,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      parentId: json['parent_id'],
      categoryName: json['category_name'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

}
class productModel {
  int? id;
  int? productId;
  int? branchId;
  int? inQuantity;
  int? recentQuantity;
  String? dateIn;
  String? prodDate;
  String? expDate;
  String? purchaseNum;
  int? buyingCost;
  int? price;
  String? createdAt;
  String? updatedAt;
  Products? products;

  productModel(
      {this.id,
        this.productId,
        this.branchId,
        this.inQuantity,
        this.recentQuantity,
        this.dateIn,
        this.prodDate,
        this.expDate,
        this.purchaseNum,
        this.buyingCost,
        this.price,
        this.createdAt,
        this.updatedAt,
        this.products});

  productModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    branchId = json['branch_id'];
    inQuantity = json['in_quantity'];
    recentQuantity = json['recent_quantity'];
    dateIn = json['date_in'];
    prodDate = json['prod_date'];
    expDate = json['exp_date'];
    purchaseNum = json['purchase_num'];
    buyingCost = json['buying_cost'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    products = json['products'] != null
        ? new Products.fromJson(json['products'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['product_id'] = productId;
    data['branch_id'] = branchId;
    data['in_quantity'] = inQuantity;
    data['recent_quantity'] = recentQuantity;
    data['date_in'] = dateIn;
    data['prod_date'] = prodDate;
    data['exp_date'] = expDate;
    data['purchase_num'] = purchaseNum;
    data['buying_cost'] = buyingCost;
    data['price'] = price;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (products != null) {
      data['products'] = products!.toJson();
    }
    return data;
  }
}

class Products {
  int? id;
  String? uPCCode;
  String? productCode;
  int? producingCompanyId;
  String? productName;
  int? categoryId;
  String? description;
  String? image;
  int? weight;
  String? wUnit;
  int? size;
  String? sUnit;
  int? boxQuantity;
  String? createdAt;
  String? updatedAt;

  Products(
      {this.id,
        this.uPCCode,
        this.productCode,
        this.producingCompanyId,
        this.productName,
        this.categoryId,
        this.description,
        this.image,
        this.weight,
        this.wUnit,
        this.size,
        this.sUnit,
        this.boxQuantity,
        this.createdAt,
        this.updatedAt});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uPCCode = json['UPC_code'];
    productCode = json['product_code'];
    producingCompanyId = json['ProducingCompany_id'];
    productName = json['product_name'];
    categoryId = json['Category_id'];
    description = json['description'];
    image = json['image'];
    weight = json['weight'];
    wUnit = json['WUnit'];
    size = json['size'];
    sUnit = json['SUnit'];
    boxQuantity = json['box_quantity'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['UPC_code'] = this.uPCCode;
    data['product_code'] = this.productCode;
    data['ProducingCompany_id'] = this.producingCompanyId;
    data['product_name'] = this.productName;
    data['Category_id'] = this.categoryId;
    data['description'] = this.description;
    data['image'] = this.image;
    data['weight'] = this.weight;
    data['WUnit'] = this.wUnit;
    data['size'] = this.size;
    data['SUnit'] = this.sUnit;
    data['box_quantity'] = this.boxQuantity;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class CategoryGeneralController extends GetxController {
  // StorageController box =StorageController();
  final box = Get.put(StorageController());


  final RxBool isLoading = false.obs;
  final Rx<ApiResponseModel?> response = Rx<ApiResponseModel?>(null);

  List<Products> productList=<Products>[];
  List<CategoryModel> categoryList=<CategoryModel>[];

  Future<void> fetchCategories() async {
    isLoading.value = true;

    try {
      final http.Response apiResponse = await http.get(Uri.parse('http://$Ip:8000/api/managers/GeneralManager/show/CHcategories/${box.reade("idcategory")}'),headers: {'Authorization': 'Bearer $Token'},);
      print('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
      final jsonResponse = json.decode(apiResponse.body);
      print(jsonResponse);
      print('ddddddddddddddddddddddddddddaaaa');
      if (jsonResponse['status code'] == 200) {
        print('sssssssssssssssssssssssssssssssssssssssssssssss1');
        response.value = ApiResponseModel.fromJson(jsonResponse);
print(response.value!.massage!);
        if (response.value!.massage!) {

          print("/////////////////////////////////////");
          print(response.value!.massage);
          print(box.reade("idcategory"));
          print(box.reade("idBranch12"));
          // categoryList.clear();
          categoryList.addAll(response.value!.data);
           Get.to(InnerCategoriesPageGeneral( innerCategory: response.value!.data,));
           categoryList.clear();
           print(response.value!.data);
           print(response.value!.massage);
        } else {
          // Navigate to products page if 'massage' is false
          productList=response.value!.data2;
          print(productList);
          print(box.reade("idcategory"));
          Get.to(const ShowProductGeneral2());

        }
      } else {
        // Handle API error
        Get.snackbar('Error', 'Failed to fetch categories.');
      }
    } catch (e) {
      // Handle exception
      print(e);
      Get.snackbar('Error', 'Failed to fetch categories.');
    } finally {
      isLoading.value = false;
    }
  }
}
