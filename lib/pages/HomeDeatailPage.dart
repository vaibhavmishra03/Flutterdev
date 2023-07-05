// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:flutter/material.dart";
import "package:myhr/models/catalog.dart";
import "package:myhr/widgets/home_widget/add_to_cart.dart";

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        top: false,
        bottom: true,
        child: Container(
          color: context.canvasColor,
          child: Column(
            children: [
              Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.imageurl).h32(context)),
              Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: context.cardColor,
                    child: Column(
                      children: [
                        catalog.name.text.xl5
                            .color(context.theme.colorScheme.secondary)
                            .bold
                            .make(),
                        catalog.desc.text.xl
                            .textStyle(context.captionStyle)
                            .make()
                            .pOnly(top: 10),
                        "Chamber g oer here soul smiling whose and the my, my the some ungainly vainly heart memories, name loneliness he air clasp this with oh, lenore velvet suddenly into again, prophet in curious door while a murmured so to from. Bird and lie the truly thy, he separate and nights"
                            .text
                            .textStyle(context.captionStyle)
                            .make()
                            .p24()
                      ],
                    ).pOnly(top: 45),
                  ).wFull(context),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              "\$${catalog.price}".text.bold.make(),
              AddToCart(catalog: catalog
              ).wh(120, 50),
            ],
          ) //.//color(Mytheme.creamish),
          ),
    );
  }
}
