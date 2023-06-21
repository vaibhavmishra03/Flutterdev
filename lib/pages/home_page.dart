import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "Vaibhav";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CATALOGUE APP",
            style: TextStyle
            (fontStyle:FontStyle.italic),
            ),
      ),
      body: Center(
        child: const Text("FLUTTER HOME"),
      ),
      drawer: const Drawer(),
    );
  }
}
