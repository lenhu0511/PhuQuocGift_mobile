import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_app_group_project/config.dart';
import 'package:mobile_app_group_project/screens/widgets/categories.dart';
import 'package:mobile_app_group_project/screens/widgets/discount.dart';
import 'package:mobile_app_group_project/screens/widgets/new_arrival_products.dart';
import 'package:mobile_app_group_project/screens/widgets/popular_product.dart';
import 'package:mobile_app_group_project/screens/widgets/search_form.dart';


class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: SvgPicture.asset("assets/icons/menu.svg"),
      //   ),
      //   actions: [
      //     IconButton(
      //       icon: SvgPicture.asset("assets/icons/Notification.svg"),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: defaultPadding * 2),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            SizedBox(height: defaultPadding),
            const Discount(),
            SizedBox(height: defaultPadding),
            const Categories(),
            const NewArrivalProducts(),
            const PopularProducts(),
          ],
        ),
      ),
    );
  }
}
