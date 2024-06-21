import 'package:androidyshop/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:developer' as developer;

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("الاسم: Mohammed Alajmi"),
            accountEmail: const Text("البريد: Mohammed-Alajmi@outlook.sa"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  "https://avatars.githubusercontent.com/u/74423891?v=4",
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
            title: const Text("خروج"),
            iconColor: cBackGroundColor,
            textColor: cBackGroundColor,
            onTap: () {
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    );
  }
}
