import 'package:androidyshop/constants/assets.dart';
import 'package:androidyshop/constants/constants.dart';
import 'package:flutter/material.dart';

class TopPicture extends StatelessWidget {
  const TopPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: const BoxDecoration(
        color: cSecondaryBackGroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22),
          bottomRight: Radius.circular(22),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: ClipOval(child: Image.asset(appLogo)),
          ),
          const Column(
            children: [
              Text(
                "تسجيل الدخول",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  "اهلا سعيدين برجوعك لاستخدام التطبيق",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
