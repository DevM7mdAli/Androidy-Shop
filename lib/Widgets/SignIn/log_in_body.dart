import 'package:androidyshop/Widgets/SignIn/login_input_process.dart';
import 'package:androidyshop/Widgets/SignIn/top_picture.dart';
import 'package:flutter/material.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TopPicture(),
            LoginInputProcess(),
          ],
        ),
      ),
    );
  }
}
