

// import 'dart:async';

// import 'package:carousel/product_model.dart';
// import 'package:flutter/foundation.dart';

// class Cart with ChangeNotifier {
//   List<Data> products = [];

//   double get total {
//     return products.fold(0.0, (double currentTotal, Data nextProduct) {
//       return currentTotal + nextProduct.originalPrice;
//     });
//   }



//   void addToCart(Data product) => products.add(product);
//   void removeFromCart(Data product) {
//     products.remove(product);
//     notifyListeners();
//   }
// }

// class Store {
//   // Perhaps we're going to use a StreamProvider?
//   StreamController<List<Data>> _streamController = StreamController<List<Data>>();
//   Stream<List<Data>> get allProductsForSale => _streamController.stream;
  
//   // rest of class
// }