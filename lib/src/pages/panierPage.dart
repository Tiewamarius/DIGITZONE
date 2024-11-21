import 'dart:ui';

import 'package:digitzone/src/constants/colors.dart';
import 'package:digitzone/src/pages/home.dart';
import 'package:flutter/material.dart';

class Panier extends StatefulWidget {
  const Panier({super.key});

  @override
  State<Panier> createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  //List<Container> panier = List();

  final List<Map<String, dynamic>> panier = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: const PanierAppBar(),
      // bottomNavigationBar: _buildBottomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(children: [
            const Text("RESUME DU PANIER"),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sous Total"),
                  Text(
                    "502 000 XOF",
                    style: TextStyle(
                        fontSize: 15,
                        color: tBlack,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    mainAxisExtent: 160),
                itemCount: panier.length,
                itemBuilder: (_, index) {
                  return Container(
                      color: paddingColor,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 100,
                                width: 110,
                                child: Image.asset(
                                    "${panier.elementAt(index)['image']}",
                                    fit: BoxFit.cover),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${panier.elementAt(index)['name']}"),
                                  Text(
                                    "${panier.elementAt(index)['prix']}",
                                    style: const TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Suprimer"),
                                // ignore: avoid_unnecessary_containers
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                            color: tPrimaryColor,
                                            width: 1,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: IconButton(
                                            iconSize: 15,
                                              onPressed: () {},
                                              icon: const Icon(Icons.remove),
                                              tooltip: "Deacrease"),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text("01"),
                                      ),
                                      Container(
                                        height: 35,
                                        width: 35,
                                        
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                            color: tPrimaryColor,
                                            width: 1,
                                          ),
                                        ),
                                        child: IconButton(
                                            iconSize: 15,
                                            onPressed: () {},
                                            icon: const Icon(Icons.add),
                                            tooltip: "Add"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ));
                }),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: tPrimaryColor,
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.phone),
                        tooltip: "Appeler"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: tPrimaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "COMMANDER",
                            style: TextStyle(
                              color: background,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}