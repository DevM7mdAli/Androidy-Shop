import 'package:androidyshop/constants/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpInputProcess extends StatefulWidget {
  const SignUpInputProcess({super.key});

  @override
  State<SignUpInputProcess> createState() => _SignUpInputProcessState();
}

class _SignUpInputProcessState extends State<SignUpInputProcess> {
  final _emailValue = TextEditingController();
  final _passwordValue = TextEditingController();
  final _confirmPasswordValue = TextEditingController();

  Future signUp() async {
    try {
      if (validateToProcess()) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => const Center(
            child: CircularProgressIndicator(
              color: cBackGroundColor,
            ),
          ),
        );
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailValue.text.trim(),
          password: _passwordValue.text.trim(),
        );
        Navigator.of(context).pushNamed('/');
      }
    } catch (e) {
      print("Error in Sign Up");
    }
  }

  bool validateToProcess() {
    if (_confirmPasswordValue.text.trim() == _passwordValue.text.trim() &&
        _passwordValue.text.length >= 6 &&
        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(_emailValue.text.trim())) {
      return true;
    } else {
      return false;
    }
  }

  void goToLogIn() {
    Navigator.of(context).pushReplacementNamed("logInScreen");
  }

  @override
  void dispose() {
    super.dispose();
    _emailValue.dispose();
    _passwordValue.dispose();
    _confirmPasswordValue.dispose();
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
                      vertical: 2,
                    ),
                    child: TextField(
                      controller: _confirmPasswordValue,
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        labelText: "تأكيد الرقم السري",
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
              onTap: signUp,
              child: Container(
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: cPriceBoxColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "تسجيل",
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
                "لديك حساب؟",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
              InkWell(
                onTap: goToLogIn,
                child: const Text(
                  "  سجل دخول",
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
