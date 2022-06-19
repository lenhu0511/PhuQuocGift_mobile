import 'package:flutter/material.dart';
import 'package:mobile_app_group_project/config.dart';
import 'package:mobile_app_group_project/screens/views/home_view.dart';
import 'package:mobile_app_group_project/screens/widgets/bottom_nav_bar.dart';
import 'package:mobile_app_group_project/screens/widgets/commission_order_card.dart';

class CommissionReport extends StatelessWidget {
  const CommissionReport({Key? key}) : super(key: key);

  static const routeName = '/details';

  @override
  Widget build(BuildContext context) {
    int totalOrder = 10; //Waiting for API value
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => HomeView()),
          ),
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Commission Report",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                height: size.height * 0.2,
                width: size.width * 0.85,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  color: kPrimaryColor,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Commission",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFDFE),
                              fontSize: 22,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              //TODO -- Add Detail Function
                            },
                            icon: const Icon(
                              Icons.error_outline_outlined,
                              color: Color(0xFFFFFDFE),
                              size: 26,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Text(
                      "140,000",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFDFE),
                        fontSize: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              //TODO -- Total Order Function
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFCFE2F1),
                              ),
                              child: Text(
                                "Total Order : $totalOrder",
                                style: const TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.show_chart_outlined,
                              size: 70,
                              color: Color(0xFFFFFDFE),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "History",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Text(
                          "Newest",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          color: kPrimaryColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //List order
            OrderCard("Buy a Cup", DateTime.now(), 25300),
            OrderCard("Buy a Cup", DateTime.now(), 25300),
            OrderCard("Buy a Cup", DateTime.now(), 25300),
            OrderCard("Buy a Cup", DateTime.now(), 25300),
            OrderCard("Buy a Cup", DateTime.now(), 25300),
            OrderCard("Buy a Cup", DateTime.now(), 25300),
            OrderCard("Buy a Cup", DateTime.now(), 25300),
            OrderCard("Buy a Cup", DateTime.now(), 25300),
            /////////////////////////
          ],
        ),
      ),
    );
  }
}
