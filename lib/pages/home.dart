import 'dart:ui';

import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories = [
    "assets/ordinateur-portable.png",
    "assets/telephone-intelligent.png",
    "assets/ordinateur-de-bureau.png",
    "assets/tuyau-deau.png",
    "assets/clavier.png",
    "assets/developpement-de-logiciels.png",
    "assets/gratuit.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          actions: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset("assets/Ood.jpg",
                  height: 60, width: 60, fit: BoxFit.cover),
            )
          ],
          title: Container(
            margin: EdgeInsets.only(top: 20, bottom: 15),
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 138, 19, 193), width: 0.5),
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)),
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Chercher Produits',
                  suffixIcon: Icon(Icons.search,
                      color: Color.fromARGB(255, 138, 19, 193))),
            ),
          ),
          leading: const Icon(Icons.menu)),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 250,
            child: AnotherCarousel(
              images: const [
                AssetImage(
                  "assets/Iphone.jpg",
                ),
                AssetImage(
                  "assets/Iphone.jpg",
                ),
                AssetImage(
                  "assets/Iphone.jpg",
                ),
                AssetImage(
                  "assets/Iphone.jpg",
                ),
              ],
              dotBgColor: Colors.transparent,
              dotSize: 6,
              indicatorBgPadding: 4,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 135,
              margin: const EdgeInsets.all(15),
              child: ListView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryTile(image: categories[index]);
                },
              ))
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  String image;
  CategoryTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(right: 15),
      decoration: const BoxDecoration(color: Colors.white),
      height: 95,
      width: 95,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image, height: 60, width: 60, fit: BoxFit.cover),
          /*Icon(Icons.forward)*/
        ],
      ),
    );
  }
}
