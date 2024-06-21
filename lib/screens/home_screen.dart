import 'package:androidyshop/Widgets/Home/home_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: homeAppBar(), body: const HomeBody());
  }

  AppBar homeAppBar() {
    return AppBar(
      title: Text(
        "مرحبا بكم بمتجر الالكترونيات",
        style: GoogleFonts.almarai(),
      ),
      elevation: 0,
      forceMaterialTransparency: true,
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
    );
  }
}
