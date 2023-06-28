import "package:flutter/material.dart";
import "package:myhr/models/catalog.dart";
import "package:myhr/widgets/drawer.dart";
import "package:myhr/widgets/item_widget.dart";
import 'package:flutter/services.dart' show rootBundle;
import  'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;
  final String name = "Vaibhav";
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    //print(catalogJson);
    final decodeData = jsonDecode(catalogJson);
    //print(decodeData);
    var productsData = decodeData["products"];
    //print(productsData);
  }

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
      body: ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (context, index) {
          return Itemwidget(
            item: dummylist[index],
          );
        },
      ),
      drawer: const Mydrawer(),
    );
  }
}
