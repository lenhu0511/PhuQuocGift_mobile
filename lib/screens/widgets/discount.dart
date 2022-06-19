import 'package:flutter/material.dart';
import 'package:mobile_app_group_project/config.dart';

class Discount extends StatelessWidget {
  const Discount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      //margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding,
      ),
      decoration: BoxDecoration(
        color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(text: "Big Sale\n"),
            TextSpan(
              text: "Discount 20%",
              style: TextStyle(
                //fontSize: getProportionateScreenWidth(24),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}