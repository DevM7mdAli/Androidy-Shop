import 'package:androidyshop/constants/assets.dart';
import 'package:androidyshop/constants/constants.dart';
import 'package:flutter/material.dart';

class TopPicture extends StatelessWidget {
  const TopPicture({super.key, required this.title, required this.subtitle});

  final String title, subtitle;

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
          Column(
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  subtitle,
                  style: const TextStyle(fontSize: 15),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
