import 'package:get/get.dart';

import '../../../../test4.dart';


class CartController extends GetxController {
  var cartItems = <Product, int>{}.obs;

  void addToCart(Product product) {
    if (cartItems[product] == null) {
      cartItems[product] = 1;
    } else {
      cartItems[product] = cartItems[product]! + 1;
    }
  }

  void removeFromCart(Product product) {
    if (cartItems[product] != null && cartItems[product]! > 1) {
      cartItems[product] = cartItems[product]! - 1;
    } else {
      cartItems.remove(product);
    }
  }

  void clearCart() {
    cartItems.clear();
  }
}
