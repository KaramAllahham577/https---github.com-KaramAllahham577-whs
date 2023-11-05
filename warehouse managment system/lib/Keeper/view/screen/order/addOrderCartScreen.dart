import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'addOrderCartController.dart';

  class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   CartController controller= Get.put(CartController());
    return Scaffold(
      backgroundColor: const Color(0xff161a1d),
      appBar: AppBar(
        title: const Text(
          'Order Product List',
          style: TextStyle(
            fontFamily: "DM Sans",
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: GetBuilder<CartController>(
            builder: (controller) => ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 10,),
          itemCount: controller.cartItems.length,
          itemBuilder: (context, index) {
            var product = controller.cartItems.keys.elementAt(index);
            var quantity = controller.cartItems[product];
            return Container(
              height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.5,
                    color: const Color(0xff6a040f),
                  ),
                  color: const Color(0Xfff4f4f8),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: ListTile(
                  title: Text(
                    product.name,
                    style: const TextStyle(
                      fontFamily: "DM Sans",
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    '\$${product.price}',
                    style: const TextStyle(
                      fontFamily: "DM Sans",
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: const Color(0xff03674b),
                      ),
                      color: const Color(0Xfff4f4f8),
                      borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove,
                          color: Colors.black,),

                          onPressed: () {
                            controller.removeFromCart(product);
                          },
                        ),
                        Text('$quantity'),
                        IconButton(
                          icon: const Icon(Icons.add,
                          color: Colors.black,),
                          onPressed: () {
                            controller.addToCart(product);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
