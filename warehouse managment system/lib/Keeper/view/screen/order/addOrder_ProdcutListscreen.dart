import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../test4.dart';
import 'addOrderCartController.dart';
import 'addOrderCartScreen.dart';




class ProductListScreen extends StatelessWidget {
  final products = [
    Product(name: 'Product 1', price: '29.99'),
    Product(name: 'Product 2', price: '49.99'),
    Product(name: 'Product 3', price: '19.99'),
    // Add more products here
  ];

  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff161a1d),
      appBar: AppBar(
        title: Text('Product List',style:  TextStyle(
          fontFamily: "DM Sans",
          fontWeight: FontWeight.w500,
          fontSize: 20,
          color: Colors.white,
        ),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Get.to(CartScreen());
            },
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(height: 10,),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              border: Border.all(
                width: 3.5,
                color: Color(0xff6a040f),
              ),
              color: Color(0Xfff4f4f8),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Center(
              child: ListTile(
                title: Text(products[index].name,style:  TextStyle(
                  fontFamily: "DM Sans",
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black,
                ),),
                subtitle: Text('\$${products[index].price}',style:  TextStyle(
                  fontFamily: "DM Sans",
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black,
                ),),
                trailing:  GestureDetector(
                  onTap: () {
                    cartController.addToCart(products[index]);

                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius:   BorderRadius.circular(10),
                      border: Border.all(
                        color:Color(0xff6a040f) ,
                        width: 2
                      ),
                    ),
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      'assets/images/icons/plus.png',
                      fit: BoxFit.contain,


                    ),
                  ),
                ),

              ),
            ),
          );
        },
      ),
    );
  }
}
