import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderItem extends StatelessWidget {
  const OrderItem(
      this.title, this.date, this.price, this.phone, this.room, this.status);

  final String title;
  final DateTime date;
  final double price;
  final int phone;
  final int room;
  final String status;

  @override
  Widget build(BuildContext context) {
    var dateAfterFormat = DateFormat.yMMMMd('en_US').format(date) +
        " | " +
        DateFormat.jm().format(date);
    var priceAfterFormat = NumberFormat("###,000").format(price);
    print(priceAfterFormat);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
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
                          Text(
                            "$phone - Room $room",
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
                              color: Color(0xFF4981BB),
                            ),
                          ),
                          Text(
                            status,
                            style: const TextStyle(
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
      ),
    );
  }
}
