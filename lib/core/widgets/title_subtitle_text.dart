import 'package:flutter/material.dart';

class TitleSubtitleText extends StatelessWidget {
  const TitleSubtitleText({
    super.key,
    required this.title,
    required this.subtitle,
    this.isWhite = false,
  });

  final String title;
  final String subtitle;
  final bool isWhite;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: isWhite ? Colors.white : const Color(0xFF101010),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
          overflow: TextOverflow.ellipsis,
          style:  TextStyle(
            color:isWhite ? Colors.white : Color(0xFF878787),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
