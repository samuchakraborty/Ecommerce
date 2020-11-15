import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'models/ProductItem.dart';

class ProductPage extends StatelessWidget {
  final ProductItem products;

  ProductPage({this.products});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            products.productName,
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: products.image,
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image(
                      image: AssetImage(products.image),
                    ),
                  ),
                ),
                Text(products.productName),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    "${products.price}\$",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.amber,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(EvaIcons.shoppingCart),
                          label: Text("Cart")),
                      OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(EvaIcons.creditCard),
                          label: Text("Buy Now")),
                    ],
                  ),
                ),
                Text(products.productDescription),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
