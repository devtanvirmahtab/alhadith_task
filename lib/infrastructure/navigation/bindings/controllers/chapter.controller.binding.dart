import 'package:get/get.dart';

import '../../../../presentation/chapter/controllers/chapter.controller.dart';

class ChapterControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChapterController>(
      () => ChapterController(),
    );
  }
}
