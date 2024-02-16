import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderWidget extends StatelessWidget {
  final String textPath;
  final String imgPath;

  const HeaderWidget({
    required this.textPath,
    required this.imgPath,
    Key? key,
  }) : super(key: key);

@override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                imgPath,
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 8),
              Text(
                textPath,
                style: GoogleFonts.satisfy(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}