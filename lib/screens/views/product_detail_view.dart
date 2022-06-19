import 'package:flutter/material.dart';
import 'package:mobile_app_group_project/screens/models/product.dart';


class ProductDetailView extends StatefulWidget {
  //static const routeName = '/productdetails';
  ProductDetailView(this.product);
  Product product;

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
  
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          widget.product.title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: size.height * 0.28,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black, width: 2.5),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  widget.product.image,
                  fit: BoxFit.cover,
                  // fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.title,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Product Price: ${product.price}\$",
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Product Commission: ${product.price}\$",
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.38,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
              ),
              child: const Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Description...."),
              ),
            ),
          ],
        ),
      ),
    );
  }
}