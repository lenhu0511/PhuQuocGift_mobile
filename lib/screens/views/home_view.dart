import 'package:flutter/material.dart';
import 'package:mobile_app_group_project/config.dart';
import 'package:mobile_app_group_project/screens/views/commission_report_view.dart';
import 'package:mobile_app_group_project/screens/widgets/product_home_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  Widget TextwithStyle(
      String text, double size, Color color, FontWeight weight) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  height: 230,
                  width: double.infinity,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Container(
                      width: size.width * 0.8,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //SizedBox(height: 0.9,),
                          const Text(
                            "Phu Quoc Gift",
                            style: TextStyle(
                              fontFamily: 'Gordita',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              //Need Styling
                            ),
                          ),
                          SizedBox(width: defaultPadding * 2.4),
                          IconButton(
                            onPressed: () {
                              //TODO -- add function for nofitication
                            },
                            icon: const Icon(Icons.notifications),
                            color: Colors.white,
                            iconSize: 26,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: size.height * 0.2,
                        width: size.width * 0.9,
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.005,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextwithStyle(
                                  "DAY REVENUE",
                                  19,
                                  Colors.grey,
                                  FontWeight.normal,
                                ),
                                SizedBox(
                                  height: defaultPadding,
                                ),
                                IconButton(
                                  onPressed: () {
                                    //TODO -- Add Detail Function
                                  },
                                  icon: const Icon(
                                    Icons.error_outline_outlined,
                                    color: kPrimaryColor,
                                    size: 26,
                                  ),
                                )
                              ],
                            ),
                            const Text(
                              "1,400,000"
                              //Add Day Revenue Logic
                              ,
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            ),
                            const Divider(
                              indent: 30,
                              endIndent: 30,
                              thickness: 1,
                              color: Colors.black45,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    TextwithStyle(
                                      "Total Order",
                                      15,
                                      Colors.grey,
                                      FontWeight.normal,
                                    ),
                                    TextwithStyle(
                                      "4"
                                      //Add Total Order Logic
                                      ,
                                      15,
                                      Colors.black,
                                      FontWeight.normal,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    TextwithStyle(
                                      "Commission",
                                      15,
                                      Colors.grey,
                                      FontWeight.normal,
                                    ),
                                    TextwithStyle(
                                      "4"
                                      //Add Commission Logic
                                      ,
                                      15,
                                      Colors.black,
                                      FontWeight.normal,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    detailReport(context),
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextwithStyle(
                            "Top Product",
                            24,
                            Colors.black,
                            FontWeight.bold,
                          ),
                          TextButton(
                            onPressed: () {
                              //TODO -- Something
                              getSize(size);
                            },
                            child: Row(
                              children: [
                                TextwithStyle(
                                  "More",
                                  13,
                                  kPrimaryColor,
                                  FontWeight.normal,
                                ),
                                const Icon(
                                  Icons.arrow_drop_down_outlined,
                                  color: kPrimaryColor,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    ProductCard("Product Name", "", 0, 0),
                    Divider(),
                    ProductCard("Product Name", "", 0, 0),
                    Divider(),
                    ProductCard("Product Name", "", 0, 0),
                    Divider(),
                    ProductCard("Product Name", "", 0, 0),
                    Divider(),
                    ProductCard("Product Name", "", 0, 0),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void getSize(Size size) {
    print(size.height * 0.14);
    print(size.width * 0.4);
  }

  Container detailReport(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.red;
      }
      return kPrimaryColor;
    }

    return Container(
      //alignment: Alignment.topLeft,
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextwithStyle(
            "See Detail Reports",
            24,
            Colors.black,
            FontWeight.bold,
          ),
          const SizedBox(height: 14),
          Center(
            child: ElevatedButton.icon(
                onPressed: ()
                 => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => CommissionReport()),
                    ),
                icon: const Icon(Icons.stacked_bar_chart_outlined),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.resolveWith<Size>((_) {
                    return Size(
                      MediaQuery.of(context).size.width * 0.9,
                      MediaQuery.of(context).size.height * 0.06,
                    );
                  }),
                  shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                    return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20));
                  }),
                  backgroundColor: MaterialStateColor.resolveWith(getColor),
                ),
                label: const Text(
                  "Commission Report",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )),
          ),
          const SizedBox(height: 14),
        ],
      ),
    );
  }
}
