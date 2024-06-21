import 'package:androidyshop/constants/constants.dart';
import 'package:flutter/material.dart';

class DotCircle extends StatefulWidget {
  const DotCircle({super.key, required this.circleColor});

  final Color circleColor;
  static bool selected = false;

  @override
  State<DotCircle> createState() => _DotCircleState();
}

class _DotCircleState extends State<DotCircle> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (DotCircle.selected != true) {
            DotCircle.selected = true;
          } else {
            DotCircle.selected = false;
          }
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: cDefaultPadding / 2.5),
        padding: const EdgeInsets.all(3.5),
        width: 24,
        height: 24,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: DotCircle.selected
                    ? widget.circleColor
                    : Colors.transparent)),
        child: Container(
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: widget.circleColor),
        ),
      ),
    );
  }
}
