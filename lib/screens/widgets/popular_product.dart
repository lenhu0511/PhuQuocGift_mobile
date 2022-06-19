// import 'package:flutter/material.dart';
// import 'package:mobile_app_group_project/config.dart';
// import 'package:mobile_app_group_project/screens/models/product.dart';
// import 'package:mobile_app_group_project/screens/views/product_list_view.dart';
// import 'package:mobile_app_group_project/screens/widgets/product_menu_card.dart';
// import 'section_title.dart';
// import 'package:http/http.dart' as http;
// import 'dart:async';
// import 'dart:convert';

// Future fetchProduct() async {
//   final response = await http.get(Uri.parse(
//       'https://qtpq.azurewebsites.net/api/product/getList'),
//       headers: ({
//             "Accept": "application/json",
//             "content-type": "application/json",
//           }),
//           // body: jsonEncode({
//           //   "username": usernameController.text,
//           //   "password": passwordController.text,
//           // })
//           );

//   if (response.statusCode == 200) {
//     //final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     print(response.statusCode);
//     print(jsonDecode(response.body)['data']);
//     return Product.fromJson(jsonDecode(response.body));
//     //return parsed.map<Product>((json) => Product.fromJson(json)).toList();
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load album');
//   }
// }

// // List<Product> productFromJson(String str) =>
// //     List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

// class Product {
//   final String imgLink, productName;
//   final int unitPrice;
//   final int id;
//   //final Color bgColor;

//   Product({
//     required this.imgLink,
//     required this.productName,
//     required this.unitPrice,
//     required this.id,
//     // this.bgColor = const Color(0xFFEFEFF2),
//   });

//   // factory Product.fromJson(Map<String, dynamic> json) {
//   //   return Product(
//   //     image: json['image'],
//   //     productName: json['productName'],
//   //     unitPrice: json['unitPrice'],
//   //     commission: json['commission'],
//   //   );
//   // }
//   factory Product.fromJson(Map<String, dynamic> json) => Product(
//         imgLink: json['imgLink'],
//         productName: json['productName'],
//         unitPrice: json['unitPrice'],
//         id: json['id'],
//       );
// }

// class PopularProducts extends StatefulWidget {
//   const PopularProducts({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<PopularProducts> createState() => _PopularProductsState();
// }

// class _PopularProductsState extends State<PopularProducts> {
//   late Future futureProduct;

//   @override
//   void initState() {
//     super.initState();
//     futureProduct = fetchProduct();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: defaultPadding),
//           child: SectionTitle(
//             title: "Popular Souvenir",
//             pressSeeAll: () => Navigator.of(context).pushReplacement(
//               MaterialPageRoute(builder: (_) => ProductList()),
//             ),
//           ),
//         ),
//         SingleChildScrollView(
//           physics: const BouncingScrollPhysics(
//               parent: AlwaysScrollableScrollPhysics()),
//           scrollDirection: Axis.horizontal,
//           child: Row(
        
              
             
//           children: List.generate(
//             Map().length,
//             (index) => Padding(
//               padding: const EdgeInsets.only(right: defaultPadding),
//               child: ProductCard(
//                 productName: Map()[index].productName,
//                 imgLink: Map()[index].imgLink,
//                 unitPrice: Map()[index].unitPrice,
//                 id: Map()[index].id,
//                 //bgColor: Map()[index].bgColor,
//                 press: () {},
//               ),
//             ),
//           ),
//           // children: List.generate(
//           //     Map().length,
//           //     (index) => FutureBuilder<Product>(
//           //           future: futureProduct,
//           //           builder: (context, snapshot) {
//           //             if (snapshot.hasData) {
//           //               return Text(snapshot.data!.title);
//           //             } else if (snapshot.hasError) {
//           //               return Text('${snapshot.error}');
//           //             }

//           //             // By default, show a loading spinner.
//           //             return const CircularProgressIndicator();
//           //           },
//           //         )),
//         ),
//       )
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:mobile_app_group_project/config.dart';
import 'package:mobile_app_group_project/screens/models/product.dart';
import 'package:mobile_app_group_project/screens/views/product_list_view.dart';
import 'package:mobile_app_group_project/screens/widgets/product_menu_card.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "Popular Souvenir",
            pressSeeAll: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => ProductList()),
            ),
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: ProductCard(
                  title: demo_product[index].title,
                  image: demo_product[index].image,
                  price: demo_product[index].price,
                  commission: demo_product[index].commission,
                  bgColor: demo_product[index].bgColor,
                  press: () {},
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}