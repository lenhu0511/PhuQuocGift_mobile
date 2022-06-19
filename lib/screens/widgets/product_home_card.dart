import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  // const ProductCard({
  //   Key? key,
  //   required this.productName,
  //   required this.imgUrl,
  //   required this.price,
  //   required this.commissionPrice,
  // }) : super(key: key);
  const ProductCard(
      this.productName, this.imgUrl, this.price, this.commissionPrice);

  final String productName;
  final String imgUrl;
  final double price;
  final double commissionPrice;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        //TODO -- add navigator
      },
      child: Container(
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: size.height * 0.12,
                width: size.width * 0.3,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: imgUrl.isEmpty
                      ? Image.asset("assets/images/product.png")
                      : Image.network(
                          imgUrl,
                          height: size.height * 0.18,
                          width: size.width * 0.5,
                        ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.47,
                  child: Text(
                    productName,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price $price\$",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        "Commission $commissionPrice\$",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
