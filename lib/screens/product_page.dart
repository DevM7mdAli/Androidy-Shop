import 'package:androidyshop/Widgets/Produc/detail_body.dart';
import 'package:androidyshop/constants/constants.dart';
import 'package:androidyshop/models/product.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.productIndex});
  final int productIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackGroundColor,
      appBar: detailBar(context),
      body: DetailBody(pro: productIndex),
    );
  }

  AppBar detailBar(BuildContext context) {
    return AppBar(
      backgroundColor: cSecondaryBackGroundColor,
      leading: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: IconButton(
          tooltip: "الرجوع",
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: cBackGroundColor,
        ),
      ),
      title: Text(products[productIndex].title),
      centerTitle: true,
    );
  }
}
