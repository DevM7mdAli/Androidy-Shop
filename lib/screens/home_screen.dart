import 'package:androidyshop/Widgets/Home/home_body.dart';
import 'package:androidyshop/Widgets/drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(user: user),
      appBar: homeAppBar(),
      body: const HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      title: Text(
        "مرحبا بك بمتجر الالكترونيات",
        style: GoogleFonts.almarai(),
      ),
      elevation: 0,
      forceMaterialTransparency: true,
    );
  }
}
