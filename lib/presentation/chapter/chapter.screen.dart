import 'package:alhadith_task/core/widgets/title_subtitle_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../core/constants/asset_constant.dart';
import '../../core/widgets/book_item_card.dart';
import 'controllers/chapter.controller.dart';

class ChapterScreen extends GetView<ChapterController> {
  const ChapterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1AA483),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Image.asset(backIcon,height: 18,),
                  ),
                  const SizedBox(width: 20),
                  const TitleSubtitleText(
                    title: "Book Title",
                    subtitle: "Book Subtitle",
                    isWhite: true,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 40,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      color: Colors.red,
                      height: 50,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
