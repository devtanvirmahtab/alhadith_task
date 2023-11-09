import 'package:alhadith_task/core/constants/asset_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/widgets/book_item_card.dart';
import '../../core/widgets/custom_app_bar.dart';
import '../../core/widgets/icon_bundle.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: SafeArea(
        child: SingleChildScrollView(
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
                            IconBundle(icon: watchIcon, text: "Last"),
                            IconBundle(icon: planeIcon, text: "Go To"),
                            IconBundle(icon: bookIcon2, text: "Apps"),
                            IconBundle(icon: loveIcon, text: "Sadaqa"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 35),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "All Hadith Book",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF101010),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Obx(() {
                return ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: controller.bookList.length,
                  itemBuilder: (context, index) {
                    return BookItemCard(
                      hadithBook: controller.bookList[index],
                    );
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
