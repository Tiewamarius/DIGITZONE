import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:digitzone/src/authentication/models/produits/allProduct.dart';
import 'package:digitzone/src/constants/colors.dart';
import 'package:digitzone/src/screens/allproductPage.dart';
import 'package:digitzone/src/screens/panierPage.dart';
import 'package:digitzone/src/screens/profilePage.dart';
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
  late CartScreen CartScreenPage;
  late Profile profilePage;
  int currenTabIndex = 0;
  final List<int> _badgeCounts = List<int>.generate(5, (index) => index);
  final List<bool> _badgeShows = List<bool>.generate(5, (index) => true);


  @override
  void initState() {
    home = const HomePage();
    allproductPage = const AllproductPage();
    CartScreenPage = const CartScreen();
    profilePage = const Profile();
    pages = [
      const HomePage(),
      const Allproduct(),
      const CartScreen(),
      const Profile()
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: tPrimaryColor,
      strokeColor: const Color(0x30040307),
      unSelectedColor: const Color(0xFF7D7A7A),
      backgroundColor: Colors.white,
      
      currentIndex: currenTabIndex,
      onTap: (index) {
        setState(() {
          currenTabIndex = index;
          _badgeShows[index] = false;
        });
      },
    
        items: [
          CustomNavigationBarItem(
          icon:  const Icon(Icons.home),
          title: const Text("Accueil",style: TextStyle(fontSize: 15,color: tPrimaryColor,fontWeight: FontWeight.bold),),
          
        ),
        CustomNavigationBarItem(
          icon: const  Icon(Icons.menu_open),
          title: const Text("Categories",style: TextStyle(fontSize: 15,color: tPrimaryColor,fontWeight: FontWeight.bold),),
        ),
        CustomNavigationBarItem(
          icon: const  Icon(Icons.shopping_cart),
          title: const Text("Panier",style: TextStyle(fontSize: 15,color: tPrimaryColor,fontWeight: FontWeight.bold),),
          badgeCount: _badgeCounts[3],
          showBadge: _badgeShows[2],
        ),
        CustomNavigationBarItem(
          icon: const  Icon(Icons.account_circle),
          title: const Text("Mon Compte",style: TextStyle(fontSize: 15,color: tPrimaryColor,fontWeight: FontWeight.bold),),
        ),
        ]
      ),
      body: pages[currenTabIndex],
    );
  }
}