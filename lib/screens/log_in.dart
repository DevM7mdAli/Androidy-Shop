import 'package:androidyshop/Widgets/SignIn/log_in_body.dart';
import 'package:androidyshop/constants/constants.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: cBackGroundColor,
      body: LogInBody(),
    );
  }
}
