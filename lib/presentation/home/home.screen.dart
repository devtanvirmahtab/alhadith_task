import 'package:alhadith_task/core/constants/asset_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.55,
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
                          IconBundle(icon: watchIcon,text: "Last"),
                          IconBundle(icon: planeIcon,text: "Go To"),
                          IconBundle(icon: bookIcon2,text: "Apps"),
                          IconBundle(icon: loveIcon,text: "Sadaqa"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
            // Header(),
            // BookList(),
            // NavBar()
          ],
        ),
      ),
    );
  }
}

class IconBundle extends StatelessWidget {
  const IconBundle({
    super.key,
    required this.icon,
    required this.text,
  });

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          width: 32,
          height: 32,
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xFF5D646F),
          ),
        )
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              drawerIcon,
              width: 25,
            ),
          ),
          const Text(
            "Al Hadith",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              searchIcon,
              width: 25,
            ),
          ),
        ],
      ),
    );
  }
}
