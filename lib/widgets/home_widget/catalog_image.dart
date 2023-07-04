import 'package:flutter/material.dart';
import 'package:myhr/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

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
        .color(context.canvasColor)
        .make()
        .p12()
        .w40(context);
  }
}
