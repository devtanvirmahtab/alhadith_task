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
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: CircleAvatar(
                    child: Text(
                      chapterModel.id.toString(),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                TitleSubtitleText(
                  title: chapterModel.title,
                  subtitle: chapterModel.hadithRange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
