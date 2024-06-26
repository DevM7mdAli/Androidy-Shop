import 'package:androidyshop/constants/constants.dart';
import 'package:androidyshop/screens/auth.dart';
import 'package:androidyshop/screens/home_screen.dart';
import 'package:androidyshop/screens/log_in.dart';
import 'package:androidyshop/screens/sign_up_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Androidy",
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(),
        primaryColor: cBackGroundColor,
        // colorScheme: ColorScheme.fromSwatch()
        //     .copyWith(secondary: cSecondaryBackGroundColor)
      ),
      locale: const Locale('ar'),
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      routes: {
        '/': (context) => const Auth(),
        'homeScreen': (context) => const HomeScreen(),
        'signUpScreen': (context) => const SignUpScreen(),
        'logInScreen': (context) => const LogIn(),
      },
    );
  }
}
