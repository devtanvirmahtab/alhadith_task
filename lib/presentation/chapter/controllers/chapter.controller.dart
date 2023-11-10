import 'package:get/get.dart';

import '../../../domain/core/util/db_helper.dart';

class ChapterController extends GetxController {
  //TODO: Implement ChapterController
  final chapterList = [].obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    chapterList.value = await DataBaseHelper.readChapter("bukhari");
    print("booklist ${chapterList[0].title}");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
