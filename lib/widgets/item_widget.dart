import "package:flutter/material.dart";
import "package:myhr/models/catalog.dart";

class Itemwidget extends StatelessWidget {
  final Item item;
  const Itemwidget({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: Card(
            // shape: ContinuousRectangleBorder(),
            child: ListTile(
              onTap: () {
                //print(item.name);
              },
              leading: Image.network(item.imageurl),
              title: Text(item.name),
              subtitle: Text(item.desc),
              trailing: Text("\$${item.price}"),
            ),
          ),
        ),
      ],
    );
  }
}
