import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app_group_project/config.dart';
import 'package:mobile_app_group_project/screens/views/menu_view.dart';
import 'package:mobile_app_group_project/screens/widgets/product_home_card.dart';
import 'package:mobile_app_group_project/screens/widgets/search_form.dart';

class ProductList extends StatefulWidget {
  ProductList({Key? key}) : super(key: key);
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  // List<String> images = [
  //   "assets/images/product.png",
  //   "assets/images/product.png",
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => MenuView()),
                    ),
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            ),
          ),
          title: const Text(
            "Product",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                    vertical: defaultPadding, horizontal: defaultPadding),
                child: SearchForm(),
              ),
              ProductCard("Product Name", "", 0, 0),
              Divider(),
              ProductCard("Product Name", "", 0, 0),
              Divider(),
              ProductCard("Product Name", "", 0, 0),
              Divider(),
              ProductCard("Product Name", "", 0, 0),
              Divider(),
              ProductCard("Product Name", "", 0, 0),
              Divider(),
              ProductCard("Product Name", "", 0, 0),
              Divider(),
              ProductCard("Product Name", "", 0, 0),
              Divider(),
              ProductCard("Product Name", "", 0, 0),
            ],
          ),
        ));
  }
}
