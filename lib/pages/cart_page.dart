import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:myhr/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
  const _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${999}".text.xl5.color(context.theme.colorScheme.secondary).make(),
          30.widthBox,
          ElevatedButton(
              onPressed: () {},
              child: "Buy".text.white.make(),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(context.theme.highlightColor),
              )).wh(100, 50)
        ],
      ),
    );
  }
}

class cartList extends StatefulWidget {
  const cartList({super.key});

  @override
  State<cartList> createState() => _cartListState();
}

class _cartListState extends State<cartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(CupertinoIcons.check_mark_circled),
        trailing: Icon(CupertinoIcons.delete),
        title: "Item 1".text.make(),
      ),
    );
  }
}
