import "package:flutter/material.dart";
import "package:myhr/models/catalog.dart";
import "package:myhr/widgets/drawer.dart";
import "package:myhr/widgets/item_widget.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "Vaibhav";
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(30, (index) => Catalogue.items[1]);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CATALOGUE APP",
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
        ),
      ),
      body:ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (context, index) {
          return Itemwidget(item: dummylist[index],);
        },
      ),
      drawer: const Mydrawer(),
    );
  }
}
