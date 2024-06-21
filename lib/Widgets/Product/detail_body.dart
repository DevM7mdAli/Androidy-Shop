import 'package:androidyshop/Widgets/Product/circle_dot.dart';
import 'package:androidyshop/constants/constants.dart';
import 'package:androidyshop/models/product.dart';
import 'package:flutter/material.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key, required this.pro});
  final int pro;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: 450,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: cSecondaryBackGroundColor,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 280,
                  width: size.width,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360),
                          color: cTextSecondaryColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Image.asset(
                          products[pro].image,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                //! the circle dots
                SizedBox(
                  width: size.width / 3,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DotCircle(
                        circleColor: cBackGroundColor,
                      ),
                      DotCircle(
                        circleColor: Colors.red,
                      ),
                      DotCircle(
                        circleColor: cPriceBoxColor,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                //! Rest of product info
                SizedBox(
                  width: size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("الرقم التسلسلي: #${products[pro].id}"),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 6, right: 65),
                                  child:
                                      Text("الشركة: ${products[pro].company}"),
                                ),
                              ],
                            ),
                            Text("النوع: ${products[pro].type}"),
                            Text("اضافي: ${products[pro].subTitle}"),
                            Text(
                              "السعر: \$${products[pro].price.toString()}",
                              style: const TextStyle(
                                color: cPriceBoxColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //! description
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: cDefaultPadding),
            child: Text(
              products[pro].description,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
