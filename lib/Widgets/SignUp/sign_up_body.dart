import 'package:androidyshop/Widgets/SignIn/top_picture.dart';
import 'package:androidyshop/Widgets/SignUp/sign_up_input_process.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TopPicture(
              title: "تسجيل حساب",
              subtitle: "اهلا بشاشة تسجيل حساب بالمتجر",
            ),
            SignUpInputProcess(),
          ],
        ),
      ),
    );
  }
}
