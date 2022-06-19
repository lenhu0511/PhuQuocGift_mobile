import 'package:flutter/material.dart';
import 'package:mobile_app_group_project/config.dart';
import 'package:mobile_app_group_project/screens/models/product.dart';
import 'package:mobile_app_group_project/screens/views/product_detail_view.dart';
import 'package:mobile_app_group_project/screens/views/product_list_view.dart';
import 'package:mobile_app_group_project/screens/widgets/bottom_nav_bar.dart';
import 'package:mobile_app_group_project/screens/widgets/product_menu_card.dart';

import 'section_title.dart';

class NewArrivalProducts extends StatelessWidget {
  const NewArrivalProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Product product;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "New Arrival",
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
                  press: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => ProductDetailView(product)),
                  ),
                  //{
                  //Navigator.push(
                  //context,
                  //MaterialPageRoute(
                  //builder: (context) =>
                  //DetailsScreen(product: demo_product[index]),
                  //));
                  //},
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
