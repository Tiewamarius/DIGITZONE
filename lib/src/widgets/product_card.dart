import 'package:digitzone/src/authentication/models/produits/produits.dart';
import 'package:digitzone/src/constants/colors.dart';
import 'package:digitzone/src/screens/product_screen.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
   bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductScreen(product: widget.product),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: paddingColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Image.asset( widget.product.image,
                  width: 130,
                  height: 130,
                ),
                    const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.product.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(  "Prix:${(widget.product.price)}F CFA",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                           const Text(
                            "Couleurs",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                      const SizedBox(width: 10),
                          Row(
                            children: List.generate(
                              widget.product.colors.length,
                              (cindex) => Container(
                                height: 18,
                                width: 18,
                                margin: const EdgeInsets.only(right: 2),
                                decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromARGB(255, 83, 88, 92),
                                  width: 2.0,),
                                color: widget.product.colors[cindex],
                                shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),


                
                  ],
                
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  color: paddingColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child:  IconButton(
                  icon:Icon(_isObscure ? Icons.favorite_border : Icons.favorite,),
                  onPressed: (){
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  color: tPrimaryColor,
                  iconSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
