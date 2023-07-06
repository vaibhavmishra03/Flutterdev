import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:myhr/core/store.dart';
import 'package:myhr/models/cartmodel.dart';

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
          const cartList().p24().expand(),
          const Divider(),
          const _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal();

  @override
  Widget build(BuildContext context) {
    CartModel cart = (VxState.store as MyStore).cart;

    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxBuilder(
            mutations: const {RemoveMutation},
            builder: (context, store, _) {
              return "\₹${cart.totalprice}"
                  .text
                  .xl5
                  .color(context.theme.colorScheme.secondary)
                  .make();
            },
          ),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(context.theme.highlightColor),
                  ),
                  child: "Buy".text.white.make())
              .wh(100, 50)
        ],
      ),
    );
  }
}

class cartList extends StatelessWidget {
  const cartList({super.key});

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    CartModel cart = (VxState.store as MyStore).cart;
    return cart.items.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(CupertinoIcons.check_mark_circled),
              trailing: const Icon(CupertinoIcons.delete),
              onTap: () {
                RemoveMutation(cart.items[index]);
              },
              title: cart.items[index].name.text.make(),
            ),
          );
  }
}
