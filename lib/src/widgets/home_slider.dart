
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

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

