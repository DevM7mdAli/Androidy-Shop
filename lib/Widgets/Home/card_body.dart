import 'package:androidyshop/constants/assets.dart';
import 'package:androidyshop/constants/constants.dart';
import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  const CardBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: cDefaultPadding,
        vertical: cDefaultPadding / 2,
      ),
      height: 200,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 170,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 20,
                    color: Colors.black12),
              ],
            ),
          ),
          //! image
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: cDefaultPadding),
              height: 160,
              width: 150,
              child: Image.asset(
                gbfe,
                fit: BoxFit.contain,
              ),
            ),
          ),
          //! text
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 145,
              width: size.width - 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //* empty spaces
                  Spacer(),
                  //? name of product
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: cDefaultPadding),
                    child: Text(
                      "جالاكسي بدز",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  //* empty spaces
                  Spacer(),
                  //? sub info
                  Opacity(
                    opacity: 0.7,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: cDefaultPadding),
                      child: Text(
                        "سماعات",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  //* empty spaces
                  Spacer(),
                  //? Price
                  Padding(
                    padding: const EdgeInsets.all(cDefaultPadding),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: cDefaultPadding * 1.5,
                        vertical: cDefaultPadding / 5,
                      ),
                      decoration: BoxDecoration(
                        color: cPriceBoxColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Text("السعر \$970"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
