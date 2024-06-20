import 'package:androidyshop/constants/constants.dart';
import 'package:androidyshop/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                  height: 300,
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
                SizedBox(
                  width: size.width / 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: cDefaultPadding / 2.5),
                        padding: EdgeInsets.all(3.5),
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: cTextSecondaryColor)),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: cTextSecondaryColor),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: cDefaultPadding / 2.5),
                        padding: EdgeInsets.all(3.5),
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: cBackGroundColor)),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: cBackGroundColor),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: cDefaultPadding / 2.5),
                        padding: EdgeInsets.all(3.5),
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: cPriceBoxColor)),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: cPriceBoxColor),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text("الرقم التسلسلي: #${products[pro].id}"),
                Text("الشركة: ${products[pro].company}"),
                Text("النوع: ${products[pro].type}"),
                Text("اضافي: ${products[pro].subTitle}"),
                Text("السعر: \$${products[pro].price.toString()}"),
              ],
            ),
          ),
          //! description
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
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
