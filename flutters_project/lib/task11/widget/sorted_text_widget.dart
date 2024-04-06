import 'package:flutter/widgets.dart';
import 'package:flutters_project/task11/resources/style.dart';

class SortedText extends StatelessWidget {
  final String text;

  const SortedText({
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: ColorsData.secondaryText,
        fontSize: 16,
        fontWeight: FontWeight.w400
      ),
    );
  }
}