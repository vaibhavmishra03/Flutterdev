import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

 class Mytheme {
   static lightTheme(BuildContext context) => ThemeData(
        textTheme: Theme.of(context).textTheme,
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.boogaloo().fontFamily,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );
  static darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
