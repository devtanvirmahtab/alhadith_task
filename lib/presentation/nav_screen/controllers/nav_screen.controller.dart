import 'package:alhadith_task/presentation/home/controllers/home.controller.dart';
import 'package:alhadith_task/presentation/home/home.screen.dart';
import 'package:get/get.dart';

import '../../../core/constants/asset_constant.dart';
import '../nav_screen.screen.dart';

class NavScreenController extends GetxController {
  //TODO: Implement NavScreenController
  final selectedIndex = 0.obs;

  final pageList = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];



  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    Get.put(HomeController());
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
