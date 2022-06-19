import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_app_group_project/config.dart';
import 'package:mobile_app_group_project/screens/models/category.dart';
import 'package:mobile_app_group_project/screens/views/category_list_view.dart';
import 'package:mobile_app_group_project/screens/widgets/section_title.dart';


class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "Categories",
            pressSeeAll: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => CategoryList()),
            ),
          ),
        ),
        SizedBox(
          height: 84,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: demo_categories.length,
            itemBuilder: (context, index) => CategoryCard(
              icon: demo_categories[index].icon,
              title: demo_categories[index].title,
              press: () {},
            ),
            separatorBuilder: (context, index) =>
                const SizedBox(width: defaultPadding),
          ),
        ),
      ],
    );
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
            vertical: defaultPadding / 2, horizontal: defaultPadding / 4),
        child: Column(
          children: [
            SvgPicture.asset(icon),
            const SizedBox(height: defaultPadding / 2),
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