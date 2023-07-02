import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';



  class Mytheme {
   static lightTheme(BuildContext context) => ThemeData(
        textTheme: Theme.of(context).textTheme,
        primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );
  static darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);

//colors
 static Color creamish =  const Color(0xfff5f5f5);
 static Color blueish =  const Color(0xff403b58);
  }