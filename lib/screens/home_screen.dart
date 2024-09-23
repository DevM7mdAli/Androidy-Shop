import 'package:androidyshop/Widgets/Home/home_body.dart';
import 'package:androidyshop/Widgets/drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser;
  final db = FirebaseFirestore.instance;
  String? userInfo;

  void getData() async {
    final info = db.collection('users').doc(user?.uid);
    final snapInfo = await info.get();

    final data = snapInfo.data();

    setState(() {
      userInfo = data?['name'];
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      drawer: NavDrawer(user: user, userInfo: userInfo),
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
