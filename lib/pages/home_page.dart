import "package:flutter/material.dart";
import "package:myhr/models/catalog.dart";
import "package:myhr/widgets/drawer.dart";
import "package:myhr/widgets/item_widget.dart";
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

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
   //await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
 //await Future.delayed(Duration(seconds: 2));
    //print(catalogJson);
    final decodeData = jsonDecode(catalogJson);
    //print(decodeData);
    var productsData = decodeData["products"];
     Catalogue.items = List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    //print(productsData);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    //final dummylist = List.generate(30, (index) => Catalogue.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CATALOGUE APP",
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
        ),
      ),
      body: (Catalogue.items.isNotEmpty ) ? ListView.builder(
        itemCount: Catalogue.items.length,
        itemBuilder: (context, index) {
          return Itemwidget(
            item: Catalogue.items[index],
          );
        },
      ) : Center(
        child: const CircularProgressIndicator(),
         ),
      drawer: const Mydrawer(),
    );
  }
}
