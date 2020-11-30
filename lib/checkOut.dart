

import 'package:carousel/Bloc/Item_bloc.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
 // int get _counter => Count(counter);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkout')),
      body: StreamBuilder(
        stream: bloc.getStream,
        initialData: bloc.allItems,
        builder: (context, snapshot) {
          if (snapshot.data['cart items'].length > 0) {
            return Column(
              children: <Widget>[
                /// The [checkoutListBuilder] has to be fixed
                /// in an expanded widget to ensure it
                /// doesn't occupy the whole screen and leaves
                /// room for the the RaisedButton
                Expanded(child: checkoutListBuilder(snapshot)),
                RaisedButton(
                  onPressed: () {
                    bloc.removeFromCartList();
                  //
                    // setState(() {
                    //   _counter += 0;
                    // });
                    //
                    /// for decrement
                    
                    Fluttertoast.showToast(
                        msg: "Delivery is going on",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                  child: Text("Checkout"),
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(height: 40)
              ],
            );
          } else {
            return Center(child: Text("You haven't taken any item yet"));
          }
        },
      ),
    );
  }
}

// class Checkout extends StatelessWidget {

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Checkout')),
//       body: StreamBuilder(
//         stream: bloc.getStream,
//         initialData: bloc.allItems,
//         builder: (context, snapshot) {
//           if (snapshot.data['cart items'].length > 0) {
//             return Column(
//               children: <Widget>[
//                 /// The [checkoutListBuilder] has to be fixed
//                 /// in an expanded widget to ensure it
//                 /// doesn't occupy the whole screen and leaves
//                 /// room for the the RaisedButton
//                 Expanded(child: checkoutListBuilder(snapshot)),
//                 RaisedButton(
//                   onPressed: () {
//                     bloc.removeFromCartList();
//                     Fluttertoast.showToast(
//                         msg: "Delivery is going on",
//                         toastLength: Toast.LENGTH_SHORT,
//                         gravity: ToastGravity.CENTER,
//                         timeInSecForIosWeb: 1,
//                         backgroundColor: Colors.red,
//                         textColor: Colors.white,
//                         fontSize: 16.0);
//                   },
//                   child: Text("Checkout"),
//                   color: Theme.of(context).primaryColor,
//                 ),
//                 SizedBox(height: 40)
//               ],
//             );
//           } else {
//             return Center(child: Text("You haven't taken any item yet"));
//           }
//         },
//       ),
//     );
//   }
// }

Widget checkoutListBuilder(snapshot) {
  return ListView.builder(
    itemCount: snapshot.data["cart items"].length,
    itemBuilder: (BuildContext context, i) {
      final cartList = snapshot.data["cart items"];
      final cartListPrice = snapshot.data["cart items Price"];
      final cartListPicture = snapshot.data["cart items Picture"];

      return ListTile(
        leading: Image.network(
          "https://test.anazbd.com/" + cartListPicture[i],
          fit: BoxFit.contain,
          height: 40,
          width: 40,
        ),
        title: Text(cartList[i]),
        subtitle: Text("\$${cartListPrice[i]}"),
        trailing: IconButton(
          icon: Icon(Icons.remove_shopping_cart),
          onPressed: () {
            bloc.removeFromCart(cartList[i]);
          },
        ),
        onTap: () {},
      );
    },
  );
}
