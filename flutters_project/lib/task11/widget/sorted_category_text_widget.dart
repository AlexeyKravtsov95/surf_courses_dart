import 'package:flutter/material.dart';

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
      style: Theme.of(context).textTheme.displayMedium
    );
  }
}