import 'package:digitzone/src/constants/colors.dart';
import 'package:flutter/material.dart';

class ProductAppBar extends StatefulWidget {
  const ProductAppBar({
    super.key,
  });

  @override
  State<ProductAppBar> createState() => _ProductAppBarState();
}

class _ProductAppBarState extends State<ProductAppBar> {
  bool _isObsure=true;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            icon: const Icon(Icons.arrow_back),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            icon: const Icon(Icons.share),
          ),
          const SizedBox(width: 5),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            icon: Icon( _isObsure? Icons.favorite_border_outlined:Icons.favorite),
            onPressed: (){
              setState(() {
                      _isObsure = !_isObsure;
                    });
                  },
                  color: tPrimaryColor,
          ),
        ],
      ),
    );
  }
}
