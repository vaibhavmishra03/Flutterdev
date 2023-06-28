import "package:flutter/material.dart";
import 'package:myhr/pages/Login_page.dart';
import 'package:myhr/pages/home_page.dart';
import 'package:myhr/utils/routes.dart';
import 'package:myhr/widgets/themes.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        themeMode: ThemeMode.light,
        darkTheme: Mytheme.darkTheme(context),
        theme: Mytheme.lightTheme(context),
        //debugShowCheckedModeBanner: true,
        initialRoute: "/home",
        routes: {
          "/": (context) => const HomePage(),
          Myroutes.homeroute: (context) => const HomePage(),
          Myroutes.loginroute: (context) => const Loginpage()
        });
  }
}
