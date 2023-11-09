
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/models/dooks_model.dart';
import '../../infrastructure/navigation/routes.dart';
import '../constants/asset_constant.dart';
import '../helper/get_color.dart';
import 'title_subtitle_text.dart';

class BookItemCard extends StatelessWidget {
  const BookItemCard({
    super.key, required this.hadithBook,
  });
  final HadithBook hadithBook;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed(Routes.CHAPTER);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 10),
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 15),
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        hexaIcon,
                        fit: BoxFit.cover,
                        color: HexColor(hadithBook.colorCode),
                      ),
                      Center(
                        child: Text(
                          hadithBook.abvrCode,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                TitleSubtitleText(
                  title: hadithBook.title,
                  subtitle: hadithBook.bookName,
                ),
              ],
            ),
            TitleSubtitleText(
              title: hadithBook.numberOfHadith.toString(),
              subtitle: "Hadith",
            ),
          ],
        ),
      ),
    );
  }
}