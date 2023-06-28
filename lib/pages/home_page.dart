import "package:flutter/material.dart";
import "package:myhr/widgets/drawer.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "Vaibhav";
//day learned about context,constraints
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CATALOGUE APP",
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
        ),
      ),
      body: Center(
        child: Text("FLUTTER HOME "),
      ),
      drawer: const Mydrawer(),
    );
  }
}
