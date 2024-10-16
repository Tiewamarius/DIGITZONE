import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:digitzone/pages/dropDownBtn.dart';
import 'package:digitzone/src/constants/colors.dart';
import 'package:digitzone/src/constants/text_string.dart';
import 'package:flutter/material.dart';

import '../src/constants/image_string.dart';

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
          backgroundColor: const Color.fromARGB(237, 244, 40, 74),
          actions: [
            Container(
              padding: const EdgeInsets.only(right: 10),
              /*child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset("assets/Ood.jpg",
                    height: 60, width: 60, fit: BoxFit.cover),
                    
              ),*/
              child: const DropDown(),
            )
          ],
          title: Container(
            margin: const EdgeInsets.only(top: 20, bottom: 25),
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 244, 40, 74), width: 0.5),
                color: Colors.white,
                borderRadius: BorderRadius.circular(55)),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 240,
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
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "CATEGORIES",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 78, 76, 76)),
                ),
              ],
            ),
          ),
          Container(
              height: 80,
              margin: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryTile(image: categories[index]);
                },
              )),
          Expanded(
            child: OrientationBuilder(builder: (context, Orientation) {
              return GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                children: List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: paddingColor,
                      ),
                      
                      child: Image.asset(tCable)),
                  );
                }),
              );
            }),
          )
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
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: paddingColor),
      width: 90,
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
