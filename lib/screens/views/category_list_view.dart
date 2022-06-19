import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_app_group_project/config.dart';
import 'package:mobile_app_group_project/screens/models/category.dart';
import 'package:mobile_app_group_project/screens/views/menu_view.dart';
import 'package:mobile_app_group_project/screens/widgets/search_form.dart';

class CategoryList extends StatefulWidget {
  CategoryList({Key? key}) : super(key: key);
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  // List<String> images = [
  //   "assets/images/product.png",
  //   "assets/images/product.png",
  // ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
            "Category",
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
              Container(
                width: 300,
                height: 1000,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: demo_categories.length,
                  itemBuilder: (context, index) => CategoryCard(
                    icon: demo_categories[index].icon,
                    title: demo_categories[index].title,
                    press: () {},
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding , horizontal: defaultPadding * 0.2),
        child: Column(
          children: [
            SvgPicture.asset(icon),
            const SizedBox(height: defaultPadding *2),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
      ),
    );
  }
}
