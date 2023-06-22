import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:myhr/pages/Login_page.dart';
import 'package:myhr/pages/home_page.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(brightness: Brightness.dark),
        theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            fontFamily: GoogleFonts.boogaloo().fontFamily),

        //initialRoute: "/home",
        routes: {
          "/": (context) => const Loginpage(),
          "/home": (context) => const HomePage(),
          "/login": (context) => const Loginpage()
        });
  }
}
