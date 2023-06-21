import "package:flutter/material.dart";
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
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        initialRoute: "/home",
        routes: {
          "/": (context) => Loginpage(),
          "/home": (context) => HomePage(),
          "/login": (context) => Loginpage()
        });
  }
}
