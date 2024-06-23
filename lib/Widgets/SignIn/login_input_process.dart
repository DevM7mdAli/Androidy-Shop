import 'package:androidyshop/constants/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginInputProcess extends StatefulWidget {
  const LoginInputProcess({super.key});

  @override
  State<LoginInputProcess> createState() => _LoginInputProcessState();
}

class _LoginInputProcessState extends State<LoginInputProcess> {
  final _emailValue = TextEditingController();
  final _passwordValue = TextEditingController();

  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(
          color: cBackGroundColor,
        ),
      ),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailValue.text.trim(), password: _passwordValue.text.trim());
    } catch (e) {
      print("an error happened inside the signIn method");
    }
    Navigator.of(context, rootNavigator: true).pop();
  }

  void goToSignUp() {
    Navigator.of(context).pushReplacementNamed("signUpScreen");
  }

  @override
  void dispose() {
    super.dispose();
    _emailValue.dispose();
    _passwordValue.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: cSecondaryBackGroundColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 4,
                    ),
                    child: TextField(
                      controller: _emailValue,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        labelText: "البريد الإلكتروني",
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: cSecondaryBackGroundColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 4,
                    ),
                    child: TextField(
                      controller: _passwordValue,
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        labelText: "الرقم السري",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          //! log in button
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 10,
            ),
            child: InkWell(
              onTap: signIn,
              child: Container(
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: cPriceBoxColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "تسجيل الدخول",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "ليس لديك حساب؟",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
              InkWell(
                onTap: goToSignUp,
                child: const Text(
                  " انشأ حسابك الآن",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
