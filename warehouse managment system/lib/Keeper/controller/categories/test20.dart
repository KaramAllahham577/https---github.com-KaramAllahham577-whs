import 'dart:convert';

import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/constant/const.dart';
import 'package:untitled3/Keeper/view/screen/categories/inner_categories.dart';
import 'package:untitled3/Keeper/view/screen/product/show2.dart';
import 'package:untitled3/Keeper/view/screen/product/show_product.dart';
import 'package:http/http.dart' as http;

import '../product/show_product_controller.dart';
import '../test_controller.dart';



class   ApiResponseModel {
  ShowProductController controller =ShowProductController();
  final bool massage;
  final List<CategoryModel> data;
  final List<productModel> data2;
  final int statusCode;

  ApiResponseModel( {
    required this.data2,
    required this.massage,
    required this.data,
    required this.statusCode,
  });

  factory ApiResponseModel.fromJson(Map<String, dynamic> json) {
  if(json['massage']){
    return ApiResponseModel(
      massage: json['massage'],
      data: List<CategoryModel>.from(
        json['data'].map((category) => CategoryModel.fromJson(category)),
      ),
      statusCode: json['status code'], data2: [],
    );
  }
     else{
       print('[pppppppppppppppppppppppppppppppppppppppppppppppppppp]');

    return ApiResponseModel(
      massage: json['massage'],
      data2: List<productModel>.from(
        json['data'].map((category) => productModel.fromJson(category)),
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
  var id;
  var productId;
  var branchId;
  var inQuantity;
  var recentQuantity;
  String? dateIn;
  String? prodDate;
  String? expDate;
  String? purchaseNum;
  var buyingCost;
  var price;
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
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['branch_id'] = this.branchId;
    data['in_quantity'] = this.inQuantity;
    data['recent_quantity'] = this.recentQuantity;
    data['date_in'] = this.dateIn;
    data['prod_date'] = this.prodDate;
    data['exp_date'] = this.expDate;
    data['purchase_num'] = this.purchaseNum;
    data['buying_cost'] = this.buyingCost;
    data['price'] = this.price;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.products != null) {
      data['products'] = this.products!.toJson();
    }
    return data;
  }
}

class Products {
  int? id;
  String? uPCCode;
  String? productCode;
  var producingCompanyId;
  String? productName;
  var categoryId;
  String? description;
  var supplierId;
  String? image;
  var weight;
  String? wUnit;
  var size;
  String? sUnit;
  var boxQuantity;
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
        this.supplierId,
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
    supplierId = json['Supplier_id'];
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
    data['Supplier_id'] = this.supplierId;
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

class CategoryController extends GetxController {
  // StorageController box =StorageController();
  final box = Get.put(StorageController());


  final RxBool isLoading = false.obs;
  final Rx<ApiResponseModel?> response = Rx<ApiResponseModel?>(null);

  List<productModel> productList1=<productModel>[];
  List<CategoryModel> categoryList=<CategoryModel>[];
  Future<void> fetchCategories() async {
    isLoading.value = true;

    try {
      final http.Response apiResponse = await http.get(Uri.parse('http://$Ip:8000/api/managers/show/CHcategories/${box.reade("idBranch")}/${box.reade("idcategory")}'),headers: {'Authorization': 'Bearer $Token'},);
      print('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa${box.reade('idBranch')}');
      final jsonResponse = json.decode(apiResponse.body);
      print('ddddddddddddddddddddddddddddaaaa');
      if (apiResponse.statusCode == 200) {
        print('sssssssssssssssssssssssssssssssssssssssssssssss');
        print(jsonResponse);
        print(box.reade("idBranch"));
        print(box.reade("idcategory"));
        response.value = ApiResponseModel.fromJson(jsonResponse);

        if (response.value!.massage) {
          // Navigate to inner page if 'massage' is true
          print("/////////////////////////////////////");
          print(response.value!.massage);
          // categoryList.clear();
          print(box.reade("idBranch1"));
          print(box.reade("idcategory"));
          categoryList=response.value!.data;
           Get.to(InnerCategoriesPage( innerCategory: categoryList,));
        } else {
          // Navigate to products page if 'massage' is false
          productList1=response.value!.data2;
          Get.to(ShowProduct2());

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
