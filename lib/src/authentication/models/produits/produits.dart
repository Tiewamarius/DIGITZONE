import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
  });
}

final List<Product> products = [
  Product(
      title: "imprimante-hp-laserjet-pro",
      description: "Original_impoerter",
      image: "assets/Produits/imprimante-hp-laserjet-pro-m179fnw.png",
      price: 12000,
      colors:[
      Colors.white,
      Colors.black,
      ],
    category: "Informatique",
    rate: 4.8,
    ),
    Product(
      title: "Disque-dur-externe1tb",
      description: "Original_impoerter",
      image: "assets/Produits/disque-dur-externe-1tb.png",
      price: 3300,
      colors: [
      
      ],
    
    category: "Informatique",
    rate: 4.8,
    ),
    Product (
      title: "Laptop_Hp-tactile",
      description: "Original_impoerter",
      image: "assets/Produits/ordinateur-portable-tactile.png",
      price: 32500,
      colors: [
      Colors.grey,
      Colors.black,
      ],
    category: "Informatique",
    rate: 4.8,
    ),
    Product(
      title: "Tv_Smart",
      description: "Original_impoerter",
      image: "assets/Produits/Tv_Smart.png",
      price: 12000,
      colors: [
        
      ],
    category: "Informatique",
      rate: 4,
    ),
    Product(
      title: "Disque-Externe_500Gb",
      description: "Original_impoerter",
      image: "assets/Produits/Disques_.png",
      price: 2200,
      colors: [
        
      ],
    category: "Informatique",
    rate: 4.8,
    ),
    Product (
      title: "Iphone 16-hero-geo",
      description: "Original_impoerter",
      image: "assets/Produits/Apple-iPhone-16-hero-geo.png",
      price: 70000,
      colors: [
      Colors.blueAccent,
      Colors.grey,
      const Color.fromARGB(255, 237, 216, 22),
      Colors.black,
      ],
    category: "Informatique",
    rate: 4.8,
    ),
    Product (
      title: "Iphon 16",
      description: "Original_impoerter",
      image: "assets/Produits/Apple-iPhone-16.png",
      price: 65000,
      colors: [
      Colors.blueAccent,
      Colors.grey,
      const Color.fromARGB(255, 237, 216, 22),
      Colors.black,
      ],
    category: "Informatique",
    rate: 4.8,
    ),
    Product (
      title: "Dell-M1N98-Core-i7o",
      description: "Original_impoerter",
      image: "assets/Produits/Dell-Precision M1N98-Core-i7-desktop.png",
      price: 25000,
      colors: [
      Colors.grey,
      Colors.black,
      ],
    category: "Informatique",
    rate: 4.8,
    ),
    Product (
      title: "AntiVirus",
      description: "Original_impoerter",
      image: "assets/Produits/AntiVirus.png",
      price: 25000,
      colors: [
      ],
    category: "Informatique",
    rate: 4.8,
    ),
    Product (
      title: "Screens_Bureau",
      description: "Original_impoerter",
      image: "assets/Produits/Screens_Bureau.png",
      price: 18500,
      colors: [
      Colors.black,
      ],
    category: "Informatique",
    rate: 4.8,),

];
