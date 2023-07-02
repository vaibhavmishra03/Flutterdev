// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:flutter/material.dart";
import "package:myhr/models/catalog.dart";
import "package:myhr/widgets/home_widget/catalog_list.dart";
import "package:myhr/widgets/themes.dart";
//import "package:myhr/widgets/themes.dart";
import "package:velocity_x/velocity_x.dart";
//import "package:myhr/widgets/home_widget/catalog_Item.dart";

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          "\$${catalog.price}".text.bold.make(),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Mytheme.blueish),
                  shape: MaterialStateProperty.all(StadiumBorder())),
              child: "buy".text.xl.bold.make()).wh(100, 50),
        ],
      ).color(Mytheme.creamish),
      appBar: AppBar(),
      body: SafeArea(
        top: false,
         bottom: true,
        child: Column(
          children: [
            Hero(
                tag: Key(catalog.imageurl),
                child: Image.network(catalog.imageurl).h32(context)),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Mytheme.creamish,
                  child: Column(
                    children: [
                      catalog.name.text.xl5.color(Mytheme.blueish).bold.make(),
                      catalog.desc.text.xl
                          .textStyle(context.captionStyle)
                          .make()
                          .pOnly(top: 10),
                    ],
                  ).pOnly(top: 45),
                ).wFull(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
