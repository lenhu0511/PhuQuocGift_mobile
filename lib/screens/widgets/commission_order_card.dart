import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app_group_project/config.dart';

class OrderCard extends StatelessWidget {
  const OrderCard(this.title, this.date, this.price);

  final String title;
  final DateTime date;
  final double price;

  @override
  Widget build(BuildContext context) {
    var dateAfterFormat = DateFormat.yMMMMd('en_US').format(date) +
        " | " +
        DateFormat.jm().format(date);
    var priceAfterFormat = NumberFormat("###,000").format(price);
    print(priceAfterFormat);

    return GestureDetector(
      onTap: () {
        //TODO do something idk
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          dateAfterFormat,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          priceAfterFormat,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: kPrimaryColor,
                          ),
                        ),
                        const Text(
                          "VNĐ",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(height: 6)
        ],
      ),
    );
  }
}
