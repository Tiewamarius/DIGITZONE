import 'package:digitzone/src/constants/colors.dart';
import 'package:flutter/material.dart';
class AllproductPage extends StatefulWidget {
  const AllproductPage({super.key});

  @override
  State<AllproductPage> createState() => _AllproductPageState();
}

class _AllproductPageState extends State<AllproductPage> {
  final List<Map<String, dynamic>> articles = [
    
    {
      "name": "Iphone 16",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/Apple-iPhone-16-hero-geo.png",
      "prix": "700 000 XOF",
      "note": 4,
    },
    {
      "name": "imprimante-hp",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/imprimante-hp-laserjet-pro-m179fnw.png",
      "prix": "120 000 XOF"
    },
    {
      "name": "Laptop_Hp-tactile",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/ordinateur-portable-tactile.png",
      "prix": "325 000 XOF",
      "note": 4,
    },
    {
      "name": "Iphone 16",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/Apple-iPhone-16-hero-geo.png",
      "prix": "700 000 XOF",
      "note": 4,
    },
    {
      "name": "Disque-dur",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/disque-dur-externe-1tb.png",
      "prix": "33 000 XOF",
      "note": 4,
    },
    {
      "name": "Tv_Smart",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/Tv_Smart.png",
      "prix": "2 000 XOF /M",
      "note": 4,
    },
    {
      "name": "Disque-Dure_500Gb",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/Disques_.png",
      "prix": "22 000 XOF",
      "note": 4,
    },
    {
      "name": "Iphon 16",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/Apple-iPhone-16.png",
      "prix": "650 000 XOF",
      "note": 4,
    },
    {
      "name": "Dell-M1N98-Core",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/Dell-Precision M1N98-Core-i7-desktop.png",
      "prix": "250 000 XOF",
      "note": 4,
    },
    {
      "name": "Tv_Smart",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/Tv_Smart.png",
      "prix": "2 000 XOF /M",
      "note": 4,
    },
    {
      "name": "Disque-Dure_500Gb",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/Disques_.png",
      "prix": "22 000 XOF",
      "note": 4,
    },
    {
      "name": "AntiVirus",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/AntiVirus.png",
      "prix": "250 000 XOF",
      "note": 4,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: background,
      appBar: AppBar(
        title: const Text('TOUS LES PRODUITS'),
        centerTitle: true,),

      body:
      SingleChildScrollView(
        child: Column(
          children: [
          ProduitsContainer(articles: articles),
        ]),
      ),
    );
  }
}


class ProduitsContainer extends StatelessWidget {
  const ProduitsContainer({
    super.key,
    required this.articles,
  });

  final List<Map<String, dynamic>> articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              mainAxisExtent: 220),
          itemCount: articles.length,
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap:() {
                //Navigator.push(context,MaterialPageRoute(builder: (context) => const DetailProduits()));
                },
              child: Container(
                decoration: BoxDecoration(
                    color: paddingColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.asset(
                            "${articles.elementAt(index)['image']}",
                            height: 130,
                            fit: BoxFit.cover),
                      ),
                      Text("${articles.elementAt(index)['name']}"),
                      Text(
                        "${articles.elementAt(index)['prix']}",
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      const Row(
                        children: [
                          Text(
                            'Note',
                            style: TextStyle(
                                fontSize: 11,
                                color: Color.fromARGB(255, 99, 103, 105)),
                          ),
                          Icon(Icons.star, color: tPrimaryColor,size: 11,),
                          Icon(Icons.star, color: tPrimaryColor,size: 11,),
                          Icon(Icons.star_border_outlined,
                              color: tPrimaryColor,size: 11,),
                          Icon(Icons.star_border_outlined, color: tPrimaryColor,size: 11,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}



class AppBarContainer extends StatelessWidget {
  const AppBarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.only(left:25,top: 20, bottom: 10),
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                border: Border.all(color: tPrimaryColor, width: 0.5),
                color: Colors.white,
                borderRadius: BorderRadius.circular(55)),
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Chercher Produits',
                  suffixIcon: Icon(Icons.search, color: tPrimaryColor)),
            ),
          );
  }
}