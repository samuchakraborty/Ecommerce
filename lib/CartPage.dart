
import 'package:carousel/product_model.dart';

import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
   final Data productData;
  //final int itemCount;

 CartPage({this.productData});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Column(
            children: [
              Text(
                "Cart Page",
                style: TextStyle(color: Colors.black),
              ),
              // Text(
              //   "${cartProduct.length}" + "Item",
              //   style: TextStyle(color: Colors.black),
              // )
            ],
          ),
        ),

        body:Container(
            child: Column(
        children: [
            SizedBox(
              child: Container(
                child: Image.network(
                  "https://test.anazbd.com/" + productData.featureImage,
                  fit: BoxFit.contain,
                  height: 10,
                  width: 15,
                ),
              ),
            ),
            Column(
              children: [
                Text(productData.name),
              ],
            ),
        ],
      ),
          ),

        //   body: Container(
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         // AspectRatio(
        //         //   aspectRatio: 1 / 1,
        //         //   child: Image.network(
        //         //     "https://test.anazbd.com/" + products.featureImage,
        //         //     fit: BoxFit.contain,
        //         //     height: 160,
        //         //     width: 150,
        //         //   ),
        //         // ),
        //         Container(
        //           height: 23,
        //           child: CheckboxListTile(
        //             title: Text("Sellect All"),
        //             controlAffinity: ListTileControlAffinity.leading,
        //             value: true,
        //             onChanged: (newValue) {},
        //           ),
        //         ),

        //         SizedBox(
        //           height: 30,
        //         ),
        //         Container(
        //           height: 23,
        //           child: CheckboxListTile(
        //             title: Text("ANAZ SUPER SHOP"),
        //             controlAffinity: ListTileControlAffinity.leading,
        //             value: true,
        //             onChanged: (bool value) {},
        //           ),
        //         ),
        //         SizedBox(
        //           height: 30,
        //         ),

        //         // Container(
        //         //   child: Row(
        //         //       crossAxisAlignment: CrossAxisAlignment.start,
        //         //       children: [
        //         //         Container(
        //         //           child: Image.network(
        //         //             "https://test.anazbd.com/" + products.featureImage,
        //         //             fit: BoxFit.contain,
        //         //             height: 70,
        //         //             width: 70,
        //         //           ),
        //         //         ),
        //         //         Container(child: Text(products.name,style: TextStyle(fontSize: 10,),)),
        //         //         SizedBox(
        //         //   width: 30,
        //         // ),
        //         //         Container(child: Text("${products.originalPrice}")),
        //         //       ]),
        //         // ),

        //         // Container(height: 30, child: Text(products.name)),
        //         // Padding(
        //         //   padding:
        //         //       const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        //         //   child: Text(
        //         //     "MRP:  " + "${products.originalPrice}",
        //         //     style: TextStyle(
        //         //         fontSize: 17,
        //         //         color: Colors.amber,
        //         //         fontWeight: FontWeight.w400),
        //         //   ),
        //         // ),
        //         // Padding(
        //         //   padding:
        //         //       const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        //         //   child: Row(
        //         //     children: [
        //         //       OutlinedButton.icon(
        //         //           onPressed: () {

        //         //           },
        //         //           icon: Icon(EvaIcons.shoppingCart),
        //         //           label: Text("Cart")),
        //         //       OutlinedButton.icon(
        //         //           onPressed: () {},
        //         //           icon: Icon(EvaIcons.creditCard),
        //         //           label: Text("Buy Now")),
        //         //     ],
        //         //   ),
        //         // ),
        //         // Html(
        //         //   data: products.description,
        //         // ),

        //         // Text(products.description),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
