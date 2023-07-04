import 'package:flutter/material.dart';
import 'package:myhr/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

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
            .color(context.theme.colorScheme.secondary)
            .xl5
            .bold
            .make(),
        "Trending products ".text.xl2.make(),
      ],
    );
  }
}
