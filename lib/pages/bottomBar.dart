import 'package:digitzone/pages/allproductPage.dart';
import 'package:digitzone/pages/home.dart';
import 'package:digitzone/pages/panierPage.dart';
import 'package:digitzone/pages/profilePage.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class BottomNavigationBart extends StatefulWidget {
  const BottomNavigationBart({super.key});

  @override
  State<BottomNavigationBart> createState() => _BottomNavigationBartState();
}

class _BottomNavigationBartState extends State<BottomNavigationBart> {
  late List<Widget> pages;
  late HomePage home;
  late AllproductPage allproductPage;
  late Panier panierPage;
  late Profile profilePage;
  int currenTabIndex = 0;


  @override
  void initState() {
    home = const HomePage();
    allproductPage = const AllproductPage();
    panierPage = const Panier();
    profilePage = const Profile();
    pages = [
      const HomePage(),
      const AllproductPage(),
      const Panier(),
      const Profile()
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      CustomNavigationBar(
        items: [
        CustomNavigationBarItem(
          icon: Icon(Icons.home),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.menu),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          badgeCount: _badgeCounts[1],
          showBadge: _badgeShows[1],
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.person),
          badgeCount: _badgeCounts[4],
          showBadge: _badgeShows[4],
        ),
      ],

      )
    );
  }
}
