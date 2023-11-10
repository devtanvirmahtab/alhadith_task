import 'package:get/get.dart';

import '../../../../presentation/remark/controllers/remark.controller.dart';

class RemarkControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RemarkController>(
      () => RemarkController(),
    );
  }
}
