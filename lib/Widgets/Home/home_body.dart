import 'package:androidyshop/Widgets/Home/card_body.dart';
import 'package:androidyshop/constants/constants.dart';
import 'package:androidyshop/models/product.dart';
import 'package:androidyshop/screens/product_page.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 65),
                    decoration: const BoxDecoration(
                        color: cBackGroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                  ),
                  ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) => CardBody(
                      itemIndex: index,
                      product: products[index],
                      press: (indexItem) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductPage(
                              productIndex: index,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
