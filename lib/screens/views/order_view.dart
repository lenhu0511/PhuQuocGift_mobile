import 'package:flutter/material.dart';
import 'package:mobile_app_group_project/screens/widgets/order_item.dart';

enum OrderType {
  New,
  Delivery,
  Successful,
  Cancel,
}

class OrderView extends StatelessWidget {
  const OrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            unselectedLabelStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 16,
                color: Colors.black),
            labelStyle: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 18,
            ),
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.symmetric(horizontal: 20),
            isScrollable: true,
            tabs: [
              Text("New", style: TextStyle(color: Colors.black)),
              Text("Delivery", style: TextStyle(color: Colors.black)),
              Text("Successful", style: TextStyle(color: Colors.black)),
              Text("Cancel", style: TextStyle(color: Colors.black)),
            ],
          ),
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            ),
          ),
          title: const Text(
            "Orders",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: const TabBarView(
          children: [
            OrderPanel(OrderType.New),
            OrderPanel(OrderType.Delivery),
            OrderPanel(OrderType.Successful),
            OrderPanel(OrderType.Cancel),
          ],
        ),
      ),
    );
  }
}

class OrderPanel extends StatelessWidget {
  const OrderPanel(this.orderType);
  final OrderType
      orderType; //Type of Order, use Enum (ie: orderType.New look at line 59-62)
  final int num = 1; //Number of orders >> wait for BE
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
          child: Text(
            "$num Order",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Column(
          children: [
            OrderItem("Le Van Dung", DateTime.now(), 398000, 0123456789, 101,
                "Delivery"),
            OrderItem("Le Van Dung", DateTime.now(), 398000, 0123456789, 101,
                "Delivery"),
            OrderItem("Le Van Dung", DateTime.now(), 398000, 0123456789, 101,
                "Delivery"),
            OrderItem("Le Van Dung", DateTime.now(), 398000, 0123456789, 101,
                "Delivery"),
          ],
        )
      ],
    );
  }
}
