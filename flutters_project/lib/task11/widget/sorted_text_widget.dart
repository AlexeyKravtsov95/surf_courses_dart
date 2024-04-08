import 'package:flutter/material.dart';

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
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
        color: Theme.of(context).colorScheme.primaryContainer
      ),
    );
  }
}