import 'package:flutter/material.dart';
import 'package:myhr/models/catalog.dart';
import 'package:myhr/pages/HomeDeatailPage.dart';
import 'package:myhr/widgets/home_widget/catalog_Item.dart';
import 'package:myhr/widgets/home_widget/catalog_image.dart';
import 'package:myhr/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: Catalogue.items.length,
      itemBuilder: (context, index) {
        final catalog = Catalogue.getByPosition(index);
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeDetailPage(catalog: catalog),
                )),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}
