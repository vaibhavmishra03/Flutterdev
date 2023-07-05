import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:myhr/models/cartmodel.dart';

import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
   CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart"
            .text
            .color(context.theme.colorScheme.secondary)
            .semiBold
            .make(),
      ),
      body: Column(
        children: [
           cartList().p24().expand(),
           Divider(),
           _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
   _CartTotal();

  @override
  Widget build(BuildContext context) {
    final cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${cart.totalprice}"
              .text
              .xl5
              .color(context.theme.colorScheme.secondary)
              .make(),
          30.widthBox,
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(context.theme.highlightColor),
              ),
              child: "Buy".text.white.make()).wh(100, 50)
        ],
      ),
    );
  }
}

class cartList extends StatelessWidget{
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty ? "Nothing to show".text.xl3.makeCentered() : ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context, index) => ListTile(
        leading:  Icon(CupertinoIcons.check_mark_circled),
        trailing:
          Icon(CupertinoIcons.delete),
         onTap: () {
           _cart.remove(_cart.items[index]);
         },
           
        title: _cart.items[index].name.text.make(),
      ),
    );
  }
}
