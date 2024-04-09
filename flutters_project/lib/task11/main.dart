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
        fontFamily: GoogleFonts.sora().fontFamily,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          secondary: const Color.fromRGBO(37, 40, 73, 1),
          primaryContainer: const Color.fromRGBO(96, 96, 123, 1),
          secondaryContainer: const Color.fromRGBO(241, 241, 241, 1),
          tertiary: const Color.fromRGBO(181, 181, 181, 1),
          error: const Color.fromRGBO(255, 0, 0, 1),
          onPrimary: const Color.fromRGBO(103, 205, 0, 1),
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          displaySmall: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
          displayMedium: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          labelLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          headlineMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      home: const ProductListWidget(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}