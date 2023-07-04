import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static lightTheme(BuildContext context) => ThemeData(
        textTheme: Theme.of(context).textTheme,
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamish,
        highlightColor: blueish,
        colorScheme: ColorScheme.light(secondary: blueish),
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );
  static darkTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkcremish,
        highlightColor: lightblueish,
        colorScheme: ColorScheme.light(
            brightness: Brightness.dark, secondary: Colors.white),
        appBarTheme: const AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
         
      ),
        
             );
          
       

//colors
  static Color creamish = const Color(0xfff5f5f5);
  static Color blueish = const Color(0xff403b58);
  static Color lightblueish = Vx.indigo600;
  static Color darkcremish = Vx.gray900;
}
