import 'package:flutter/material.dart';
import 'package:flutters_project/task11/widget/product_list_widget.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ShoppingListApp());
}

class ShoppingListApp extends StatelessWidget {
  const ShoppingListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shopping List",
      theme: ThemeData(
        fontFamily: GoogleFonts.sora().fontFamily
      ),
      home: const ProductListWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}