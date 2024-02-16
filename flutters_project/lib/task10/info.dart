import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoWidget extends StatelessWidget {
  final String name;
  final String profession;

  const InfoWidget({
    required this.name,
    required this.profession,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            name,
            style: GoogleFonts.satisfy(
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            profession,
            style: GoogleFonts.satisfy(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            )
          ),
        ],
      ),
    );
  }
}