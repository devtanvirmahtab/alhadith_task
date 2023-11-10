import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HadithSlider extends StatelessWidget {
  const HadithSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 210.0, autoPlay: true, viewportFraction: 1),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Center(
                  child: Text(
                    'Hadith Slilder $i',
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ));
          },
        );
      }).toList(),
    );
  }
}