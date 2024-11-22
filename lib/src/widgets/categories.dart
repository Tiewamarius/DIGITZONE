import 'package:flutter/material.dart';

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

