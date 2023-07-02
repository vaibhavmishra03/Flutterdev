import 'package:flutter/material.dart';

import 'package:myhr/widgets/home_widget/catalog_image.dart';
import 'package:myhr/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.imageurl) ,
            child: Catalogimage(image: catalog.imageurl)),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            catalog.name.text.xl.color(Mytheme.blueish).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Mytheme.blueish),
                        shape: const MaterialStatePropertyAll(StadiumBorder())),
                    child: "buy".text.make())
              ],
            )
          ],
        ))
      ],
    )).white.rounded.square(150).make().py16();
  }
}
