
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


  final List<Product> products = [
    Product(
      name: 'Product 1',
      price: 'Description 1',

    ),
    Product(
      name: 'Product 2',
      price: 'Description 2',

    ),
    Product(
      name: 'Product 3',
      price: 'Description 3',

    ),
    // Add more products as needed
  ];

  @override


class Product {
  final String name;
  final String price;


  Product({
    required this.name,
    required this.price,

  });
}
