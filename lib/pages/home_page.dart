// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import "package:flutter/material.dart";
import "package:velocity_x/velocity_x.dart";
import 'package:flutter/services.dart' show rootBundle;

import "package:myhr/models/catalog.dart";
import "package:myhr/widgets/drawer.dart";
import "package:myhr/widgets/item_widget.dart";
import "package:myhr/widgets/themes.dart";

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
    await Future.delayed(Duration(seconds: 2));
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
          catalogheader(),
          if (Catalogue.items.isNotEmpty)
            CatalogList().expand()
          else
            Center(
              child: CircularProgressIndicator(),
            )
        ]),
      ),
    ));
  }
}

class catalogheader extends StatelessWidget {
  const catalogheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        "Catalog App"
            .text
            .align(TextAlign.justify)
            .color(Mytheme.blueish)
            .xl5
            .bold
            .make(),
        "Trending products ".text.xl2.make(),
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: Catalogue.items.length,
      itemBuilder: (context, index) {
        final catalog = Catalogue.items[index];
        return CatalogItem(catalog: catalog);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Catalogimage(image: catalog.imageurl),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            catalog.name.text.xl.color(Mytheme.blueish).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween ,
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                ElevatedButton(onPressed: () {},
                
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Mytheme.blueish),
                shape: MaterialStatePropertyAll(StadiumBorder())
                ),
                
                 child:  "buy".text.make())
              ],
            )
          ],
        ))
      ],
    )).white.rounded.square(150).make().py16();
  }
}

class Catalogimage extends StatelessWidget {
  final String image;
  const Catalogimage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p12
        .color(Mytheme.creamish)
        .make()
        .p12()
        .w40(context);
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
