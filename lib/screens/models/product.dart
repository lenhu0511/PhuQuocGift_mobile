import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Product {
  final String image, title;
  final int price;
  final int commission;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    required this.commission,
     this.bgColor = const Color(0xFFEFEFF2),
  });
}

// factory Product.fromJson(Map<String, dynamic> json) {
//     return Product(
//       image: json['image'],
//       title: json['title'],
//       price: json['price'],
//       commission: json['commission'],
//     );
//   }
// }

List<Product> demo_product = [
  Product(
    image: "assets/images/product.png",
    title: "Product Name",
    price: 165,
    commission: 65,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/product.png",
    title: "Product Name",
    price: 99,
    commission: 33,
  ),
  Product(
    image: "assets/images/product.png",
    title: "Product Name",
    price: 180,
    commission: 120,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product.png",
    title: "Product Name",
    price: 149,
    commission: 50,
    bgColor: const Color(0xFFEEEEED),
  ),
];