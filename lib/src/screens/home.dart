import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:digitzone/src/authentication/models/produits/produits.dart';
import 'package:digitzone/src/constants/colors.dart';
import 'package:digitzone/src/widgets/product_card.dart';
import 'package:digitzone/src/widgets/textFieldSearch.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categories = [
    "assets/telephone-intelligent.png",
    "assets/ordinateur-de-bureau.png",
    "assets/tuyau-deau.png",
    "assets/clavier.png",
    "assets/developpement-de-logiciels.png",
    "assets/gratuit.png",
  ];

  //List<Container> moviOscar = List();

  final List<Map<String, dynamic>> articles = [
    {
      "name": "imprimante-hp-laserjet-pro",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/imprimante-hp-laserjet-pro-m179fnw.png",
      "prix": "120 000 XOF"
    },
    {
      "name": "Disque-dur-externe1tb",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/disque-dur-externe-1tb.png",
      "prix": "33 000 XOF",
      "note": 4,
    },
    {
      "name": "Laptop_Hp-tactile",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/ordinateur-portable-tactile.png",
      "prix": "325 000 XOF",
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
      "name": "Disque-Externe_500Gb",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/Disques_.png",
      "prix": "22 000 XOF",
      "note": 4,
    },
    {
      "name": "Iphone 16-hero-geo",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/Apple-iPhone-16-hero-geo.png",
      "prix": "700 000 XOF",
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
      "name": "Dell-M1N98-Core-i7o",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/Dell-Precision M1N98-Core-i7-desktop.png",
      "prix": "250 000 XOF",
      "note": 4,
    },
    {
      "name": "AntiVirus",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/AntiVirus.png",
      "prix": "250 000 XOF",
      "note": 4,
    },
    {
      "name": "Screens_Bureau",
      "descrit": "Original_impoerter",
      "image": "assets/Produits/Screens_Bureau.png",
      "prix": "185 000 XOF",
      "note": 4,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
     
     body:
      SingleChildScrollView(
        child: Column(
          children: [
          SearchField(),
          const SlideSection(),
          const SizedBox(
            height: 20,
          ),
          const CategoriTitle(),
          CategoriSection(categories: categories),
          ProduitsContainer(articles: articles),
        ]),
      ),
    );
  }
}

class CategoriTitle extends StatelessWidget {
  const CategoriTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
    );
  }
}

class SlideSection extends StatelessWidget {
  const SlideSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: 240,
        child: AnotherCarousel(
          images: const [
            AssetImage(
              "assets/Apple-iPhone-16-Pro-Max.jpg",
            ),
            AssetImage(
              "assets/testPub.png",
            ),
            AssetImage(
              "assets/Iphone.jpg",
            ),
            AssetImage(
              "assets/Pub001.jpg",
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
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 280),
              itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(product: products[index]);}
          ),
    );
  }
}

class CategoriSection extends StatelessWidget {
  const CategoriSection({
    super.key,
    required this.categories,
  });

  final List categories;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: categories.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryTile(image: categories[index]);
          },
        ));
  }
}

class CategoryTile extends StatelessWidget {
  String image;
  CategoryTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: const Color.fromARGB(255, 229, 225, 225)),
        width: 70,
        height: 50,
        child: Column(
          children: [
            Image.asset(image, height: 45, width: 45, fit: BoxFit.cover),
            
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu),
      title: const Text('HomePage',style:TextStyle(color:background)),
      backgroundColor: tPrimaryColor,
    );
  }
}

class PanierAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PanierAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: const Text(" ",style:TextStyle(color:background)),
      title: const Text("Panier d'Achat",style:TextStyle(color:background)),
      backgroundColor: tPrimaryColor,
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