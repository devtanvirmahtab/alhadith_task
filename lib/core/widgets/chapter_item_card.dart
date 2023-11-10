import 'package:alhadith_task/core/constants/color_constant.dart';
import 'package:alhadith_task/data/models/chapter_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../infrastructure/navigation/routes.dart';
import 'title_subtitle_text.dart';

class ChapterItemCard extends StatelessWidget {
  const ChapterItemCard({
    super.key,
    required this.chapterModel,
  });

  final ChapterModel chapterModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.CHAPTER);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: CircleAvatar(
                backgroundColor: primaryColor,
                child: Text(
                  chapterModel.chapterId.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TitleSubtitleText(
                title: chapterModel.title,
                subtitle: "হাদিসের রেঞ্জ : ${chapterModel.hadithRange}",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
