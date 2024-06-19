import 'package:androidyshop/Widgets/Home/card_body.dart';
import 'package:androidyshop/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(top: cDefaultPadding / 2),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 65),
                  decoration: const BoxDecoration(
                      color: cBackGroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                ),
                ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) => CardBody(),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
