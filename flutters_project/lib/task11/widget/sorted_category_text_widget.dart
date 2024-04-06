import 'package:flutter/material.dart';
import 'package:flutters_project/task11/resources/style.dart';

class SortedCategoryText extends StatelessWidget {
  final String text;
  const SortedCategoryText({
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: ColorsData.secondaryText,
        fontSize: 12,
        fontWeight: FontWeight.w400
      ),
    );
  }
}