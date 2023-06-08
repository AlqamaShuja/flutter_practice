import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/cart.dart';
import 'package:shopapp/providers/products.dart';
import '../widgets/product_grid.dart';
import '../widgets/badge.dart';
import './cart_screen.dart';

enum FilteredOptions {
  Favorites,
  All,
}

class ProductOverviewScreen extends StatefulWidget {
  ProductOverviewScreen({super.key});

  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    // final productContainer = Provider.of<Products>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("ShopApp"),
        actions: [
          PopupMenuButton(
            onSelected: (FilteredOptions selectedValue) {
              setState(() {
                if (selectedValue == FilteredOptions.Favorites) {
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (ctx) => [
              PopupMenuItem(
                child: Text(
                  "Only Favorites",
                ),
                value: FilteredOptions.Favorites,
              ),
              PopupMenuItem(
                child: Text(
                  "Show All",
                ),
                value: FilteredOptions.All,
              ),
            ],
          ),
          Consumer<Cart>(
            builder: (ctx, cart, ch) => MyBadge(
              value: cart.itemCount.toString(),
              child: ch!,
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
            ),
          ),
        ],
      ),
      body: ProductGrid(_showOnlyFavorites),
    );
  }
}
