import 'package:androidyshop/Widgets/SignUp/sign_up_body.dart';
import 'package:androidyshop/constants/constants.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cSecondaryBackGroundColor,
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("logInScreen");
          },
        ),
      ),
      backgroundColor: cBackGroundColor,
      body: const SignUpBody(),
    );
  }
}
