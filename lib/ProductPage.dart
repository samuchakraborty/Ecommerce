import 'package:carousel/product_model.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class ProductPage extends StatelessWidget {
  final Data products;

  ProductPage({this.products});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            products.name,
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.network(
                    "https://test.anazbd.com/" + products.featureImage,
                    fit: BoxFit.contain,
                    height: 160,
                    width: 150,
                  ),
                ),
                Text(products.name),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    "MRP:  " + "${products.originalPrice}",
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
                Html(
                  data: products.description,
                ),

                // Text(products.description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
