import 'package:androidyshop/constants/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:developer' as developer;

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key, required this.user, required this.userInfo});

  final User? user;
  final String? userInfo;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("الاسم: ${userInfo}"),
            accountEmail: Text("البريد: ${user?.email}"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  "https://t3.ftcdn.net/jpg/03/53/11/00/360_F_353110097_nbpmfn9iHlxef4EDIhXB1tdTD0lcWhG9.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: cBackGroundColor,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://img.freepik.com/premium-photo/android-operating-system-logo-with-3d-smartphone_446318-12.jpg"),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag_outlined),
            title: const Text("السلة"),
            iconColor: cBackGroundColor,
            textColor: cBackGroundColor,
            onTap: () {
              developer.log('السلة', name: 'Drawer');
            },
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text("مشاركة"),
            iconColor: cBackGroundColor,
            textColor: cBackGroundColor,
            onTap: () {
              Share.share('check out my website https://Mohammed-Alajmi.me',
                  subject: 'My portfolio');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text("تسجيل خروج"),
            iconColor: cBackGroundColor,
            textColor: cBackGroundColor,
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
          ),
        ],
      ),
    );
  }
}
