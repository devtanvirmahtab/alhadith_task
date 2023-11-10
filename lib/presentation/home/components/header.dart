import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/asset_constant.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/hadith_slider.dart';
import '../../../core/widgets/icon_bundle.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            bottom: 45,
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.red,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF0E8468),
                      Color(0xFF2BB997),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  )),
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: CustomAppBar(),
          ),
          Positioned(
            bottom: 45,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(21),
                bottomRight: Radius.circular(21),
              ),
              child: Image.asset(
                bgImage,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconBundle(icon: watchIcon, text: "Last"),
                  IconBundle(icon: planeIcon, text: "Go To"),
                  IconBundle(icon: bookIcon2, text: "Apps"),
                  IconBundle(icon: loveIcon, text: "Sadaqa"),
                ],
              ),
            ),
          ),
          const Positioned(
            top: 100,
            left: 0,
            right: 0,
            child:  HadithSlider(),
          )
        ],
      ),
    );
  }
}

