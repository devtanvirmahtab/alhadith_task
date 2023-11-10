import 'package:alhadith_task/data/models/chapter_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../data/providers/database/db_helper.dart';

class ChapterController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final chapterList = [].obs;
  final chapterData = [].obs;
  final title = "".obs;
  final subtitle = "".obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    final argument = Get.arguments;
    title.value = argument['title'];
    subtitle.value  = argument['subtitle'];
    final data = argument['data'];
    print("book name = $data");
    chapterData.value = await DataBaseHelper.readChapter("$data");
    chapterList.value = chapterData;
  }

  searchFilter(){
    if(searchController.text.isEmpty) {
      chapterList.value = chapterData;
      return ;
    }
    else{
      chapterList.value = chapterList.where((chapterModel){
        return isChapterMatch(chapterModel,searchController.text);
      }).toList();
    }
  }

  bool isChapterMatch(ChapterModel chapterModel,String query){
    return chapterModel.title.contains(
      RegExp(query,caseSensitive: false)
    );
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
