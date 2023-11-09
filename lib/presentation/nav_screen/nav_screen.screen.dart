import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/asset_constant.dart';
import 'controllers/nav_screen.controller.dart';

class NavScreenScreen extends GetView<NavScreenController> {
  const NavScreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: controller.pageList[controller.selectedIndex.value],
      bottomNavigationBar: Container(
        height: 80,
        margin: const EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 10,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0.1,
            blurRadius: 1,
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Obx(() {
          return Row(
            children: [
              Expanded(
                child: NavIcon(
                  icon: homeIcon,
                  isActive: controller.selectedIndex.value == 0,
                  onTap: () => controller.selectedIndex.value = 0,
                ),
              ),
              Expanded(
                child: NavIcon(
                  icon: bookIcon,
                  isActive: controller.selectedIndex.value == 1,
                  onTap: () => controller.selectedIndex.value = 1,
                ),
              ),
              Expanded(
                child: NavIcon(
                  icon: taskIcon,
                  isActive: controller.selectedIndex.value == 2,
                  onTap: () => controller.selectedIndex.value = 2,
                ),
              ),
              Expanded(
                child: NavIcon(
                  icon: remarkIcon,
                  isActive: controller.selectedIndex.value == 3,
                  onTap: () => controller.selectedIndex.value = 3,
                ),
              ),
              Expanded(
                child: NavIcon(
                  icon: personIcon,
                  isActive: controller.selectedIndex.value == 4,
                  onTap: () => controller.selectedIndex.value = 4,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class NavIcon extends StatelessWidget {
  const NavIcon({
    super.key,
    required this.icon,
    required this.isActive,
    required this.onTap,
  });

  final String icon;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            icon,
            width: 30,
            height: 30,
            color: isActive ? const Color(0xff1AA483) : const Color(0xff101010),
          ),
          const SizedBox(height: 15),
          Container(
            color: isActive ? const Color(0xff1AA483) : const Color(0x0fffffff),
            width: 40,
            height: 5,
          )
        ],
      ),
    );
  }
}
