// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import "package:flutter/material.dart";
import 'package:myhr/widgets/home_widget/catalog_list.dart';
import "package:velocity_x/velocity_x.dart";
import 'package:flutter/services.dart' show rootBundle;

import "package:myhr/models/catalog.dart";



import '../widgets/home_widget/catalogheader.dart';

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
    //await Future.delayed(Duration(seconds: 1));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    await Future.delayed(const Duration(seconds: 2));
    //print(catalogJson);
    final decodeData = jsonDecode(catalogJson);
    //print(decodeData);
    var productsData = decodeData["products"];
    Catalogue.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    //print(productsData);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //final dummylist = List.generate(30, (index) => Catalogue.items[0]);
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: Vx.m32,
        child: Column(children: [ 
          const catalogheader(),
          if (Catalogue.items.isNotEmpty)
            const CatalogList().expand()
          else
             const CircularProgressIndicator().centered().expand(),
            
        ]),
      ),
    ));
  }
}






































//STATUS TILL 3OTH/DAY15 JUNE HOMEPAGE BUILT USING PREVIOUS DATA
//   appBar: AppBar(
//     title: const Text(
//       "CATALOGUE APP",
//       style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
//     ),
//   ),
//   body: (Catalogue.items.isNotEmpty)
//       ? GridView.builder(
//           gridDelegate:
//               SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//           itemBuilder: (context, index) {
//             final item = Catalogue.items[index];
//             return Padding(
//               padding: const EdgeInsets.all(4.0),
//               child: Card(
//                   clipBehavior: Clip.antiAlias,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10.0)),
//                   child: GridTile(
//                     header: Container(
//                       child: Text(
//                         item.name,
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       padding: EdgeInsets.all(12.0),
//                       decoration: BoxDecoration(
//                         color: Colors.deepPurple,
//                       ),
//                     ),
//                     footer: Text("\$${item.price.toString()}",
//                         style: TextStyle(fontWeight: FontWeight.bold)),
//                     child: Image.network(item.imageurl, fit: BoxFit.cover),
//                   )),
//             );
//           },
//           itemCount: Catalogue.items.length,
//         )
//       : Center(
//           child: const CircularProgressIndicator(),
//         ),
//   drawer: const Mydrawer(),
// );
