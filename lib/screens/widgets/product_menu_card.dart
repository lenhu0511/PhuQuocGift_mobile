import 'package:flutter/material.dart';
import 'package:mobile_app_group_project/config.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.commission,
    required this.press,
    required this.bgColor,
  }) : super(key: key);
  final String image, title;
  final VoidCallback press;
  final int price;
  final int commission;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.all(
                    Radius.circular(defaultBorderRadius)),
              ),
              child: Image.asset(
                image,
                height: 132,
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            Column(
              children: [
                Text(
                    title,
                    style: const TextStyle(color: Colors.black),
                  ),
                // Expanded(
                //   child: Text(
                //     title,
                //     style: const TextStyle(color: Colors.black),
                //   ),
                // ),
                const SizedBox(height: defaultPadding / 4),
                Text(
                  "\$" + price.toString(),
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const SizedBox(height: defaultPadding / 4),
                Text(
                  "\$" + commission.toString(),
                  style: const TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}