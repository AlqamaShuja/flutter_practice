import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart' show Cart;
import '../widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart-screen';

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
      ),
      body: Column(children: [
        Card(
          margin: EdgeInsets.all(15),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Chip(
                  label: Text(
                    "\$${cart.totalAmount}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Order Now"),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (ctx, i) => CartItem(
                id: cart.items.values.toList()[i].id,
                title: cart.items.values.toList()[i].title,
                quantity: cart.items.values.toList()[i].quantity,
                price: cart.items.values.toList()[i].price),
            itemCount: cart.itemCount,
          ),
        ),
      ]),
    );
  }
}
