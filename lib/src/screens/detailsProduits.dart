import 'package:digitzone/src/constants/colors.dart';
import 'package:flutter/material.dart';

class DetailProduits extends StatefulWidget {
  const DetailProduits({super.key});

  @override
  State<DetailProduits> createState() => _DetailProduitsState();
}

class _DetailProduitsState extends State<DetailProduits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: const DetailAppBar(),
     // bottomNavigationBar: _buildBottomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset("assets/Produits/Apple-iPhone-16.png"),
          ],
        ),
      ),
    );
  }
}

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      //leading: const Icon(Icons.arrow_back),
      title: const Text('DETAILS DU PRODUITS',
          style: TextStyle(color: Color.fromRGBO(27, 26, 26, 0.38))),
      backgroundColor: background,
    );
  }
}