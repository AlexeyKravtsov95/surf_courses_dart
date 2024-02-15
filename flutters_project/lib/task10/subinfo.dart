import 'package:flutter/material.dart';
import 'package:flutters_project/task10/header.dart';

class SubinfoWidget extends StatelessWidget {
  final String header;
  final String information;
  final String imgPath;

  const SubinfoWidget({
    required this.header,
    required this.information,
    required this.imgPath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget(
          textPath: header, 
          imgPath: imgPath
        ),
        const SizedBox(height: 8),
        Text(
          information,
          style: const TextStyle(
            fontFamily: 'Czizh', 
            fontSize: 16,
          ),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}