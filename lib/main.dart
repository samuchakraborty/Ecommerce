import 'package:carousel/widgets/CategoryItem.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/services.dart';

import 'ProductPage.dart';
import 'models/ProductItem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ProductItem> productItem = [
    ProductItem("DSLR", " DSLR", 100, "assets/products/dslr.jpg"),
    ProductItem("HandWash", "HandWash", 100, "assets/products/handwash.jpg"),
    ProductItem("Headphone", "Headphone", 100, "assets/products/headphone.jpg"),
    ProductItem("Iphone", "Iphone", 100, "assets/products/iphone.jpg"),
    ProductItem("Laptop", "Laptop", 100, "assets/products/laptop.png"),
    ProductItem("Watch", "Watch", 100, "assets/products/watch.jpg"),
    ProductItem("Shoes", "Shoes", 100, "assets/products/shoes.jpg"),
    ProductItem("Camera", "Camera", 100, "assets/products/camera.webp"),
    ProductItem("Vinegar", "Vinegar", 100, "assets/products/vinegar.webp"),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark),
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "ANAZBD",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          elevation: 0,
          actionsIconTheme: IconThemeData(
            color: Colors.black,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              (EvaIcons.menu2Outline),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(EvaIcons.shoppingBagOutline),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.down,
            children: [
              SizedBox(
                height: 100.0,
                //width: 350.0,
                width: MediaQuery.of(context).size.height,

                child: Carousel(
                  images: [
                    Image.asset('assets/banner/as.jpg'),
                    Image.asset('assets/banner/banner1.jpg'),
                    Image.asset('assets/banner/banner2.png'),
                    Image.asset('assets/banner/company.jpg'),
                    Image.asset('assets/banner/gu.jpg'),
                    Image.asset('assets/banner/work.jpg'),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.lightGreenAccent,
                  indicatorBgPadding: 5.0,
                  dotBgColor: Colors.purple.withOpacity(0.5),
                  borderRadius: true,
                ),
              ),
              SizedBox(
                height: 100.0,
                width: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'assets/banner/you.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    CategoryItem(
                      Colors.amber,
                      80,
                      EvaIcons.giftOutline,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.cyan,
                      80,
                      EvaIcons.people,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.indigo,
                      80,
                      EvaIcons.gift,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.cyan,
                      80,
                      EvaIcons.battery,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.purple,
                      80,
                      EvaIcons.battery,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.brown,
                      80,
                      EvaIcons.globe,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Category',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.yellowAccent,
                    child: Text(
                      'View All',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 190,
                child: GridView.count(
                  crossAxisCount: 4,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryItem(
                        Colors.amber,
                        80,
                        EvaIcons.giftOutline,
                        EdgeInsets.all(10),
                        EdgeInsets.only(left: 10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryItem(
                        Colors.cyan,
                        80,
                        EvaIcons.people,
                        EdgeInsets.all(10),
                        EdgeInsets.only(left: 10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryItem(
                        Colors.indigo,
                        80,
                        EvaIcons.gift,
                        EdgeInsets.all(10),
                        EdgeInsets.only(left: 10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryItem(
                        Colors.cyan,
                        80,
                        EvaIcons.battery,
                        EdgeInsets.all(10),
                        EdgeInsets.only(left: 10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryItem(
                        Colors.purple,
                        80,
                        EvaIcons.battery,
                        EdgeInsets.all(10),
                        EdgeInsets.only(left: 10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryItem(
                        Colors.brown,
                        80,
                        EvaIcons.globe,
                        EdgeInsets.all(10),
                        EdgeInsets.only(left: 10),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'ANAZ MALL SELLERS',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.yellowAccent,
                    child: Text(
                      'View All',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 19),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    CategoryItem(
                      Colors.amber,
                      80,
                      EvaIcons.giftOutline,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.cyan,
                      80,
                      EvaIcons.people,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.indigo,
                      80,
                      EvaIcons.gift,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.cyan,
                      80,
                      EvaIcons.battery,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.purple,
                      80,
                      EvaIcons.battery,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.brown,
                      80,
                      EvaIcons.globe,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'PREMIUM SELLERS',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.blue,
                    child: Text(
                      'View All',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    CategoryItem(
                      Colors.amber,
                      80,
                      EvaIcons.giftOutline,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.cyan,
                      80,
                      EvaIcons.people,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.indigo,
                      80,
                      EvaIcons.gift,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.cyan,
                      80,
                      EvaIcons.battery,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.purple,
                      80,
                      EvaIcons.battery,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.brown,
                      80,
                      EvaIcons.globe,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Collection',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.blueGrey,
                    child: Text(
                      'View All',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 19),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    CategoryItem(
                      Colors.amber,
                      80,
                      EvaIcons.giftOutline,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.cyan,
                      80,
                      EvaIcons.people,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.indigo,
                      80,
                      EvaIcons.gift,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.cyan,
                      80,
                      EvaIcons.battery,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.purple,
                      80,
                      EvaIcons.battery,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                    CategoryItem(
                      Colors.brown,
                      80,
                      EvaIcons.globe,
                      EdgeInsets.all(10),
                      EdgeInsets.only(left: 10),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Just For You',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.pinkAccent,
                    child: Text(
                      'View All',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 19),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GridView.count(
                physics: ClampingScrollPhysics(),
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 1 / 1.3,
                children: productItem.map(
                  (products) {
                    return Stack(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Hero(
                                tag: products.image,
                                child: AspectRatio(
                                  aspectRatio: 1 / 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage(products.image),
                                    ),
                                  ),
                                ),
                              ),
                              Text(products.productName),
                              Text(
                                "${products.price}\$",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.amber,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductPage(
                                    products: products,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
