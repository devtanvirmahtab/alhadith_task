import 'package:get/get.dart';

import '../../../../presentation/nav_screen/controllers/nav_screen.controller.dart';

class NavScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavScreenController>(
      () => NavScreenController(),
    );
  }
}
