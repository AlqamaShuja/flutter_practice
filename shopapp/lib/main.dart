import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/cart.dart';
import './screens/main_screen.dart';
import './screens/product_details_screen.dart';
import './screens/product_overview_screen.dart';
import './providers/products.dart';
import './screens/cart_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
      ],
      child: MaterialApp(
        title: "Shop App",
        home: ProductOverviewScreen(),
        theme: ThemeData(
          // primarySwatch: Colors.purple,
          fontFamily: 'lato',
        ).copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: Colors.purple,
                secondary: Colors.deepOrange,
              ),
        ),
        // initialRoute: "/",
        routes: {
          ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
          CartScreen.routeName: (context) => CartScreen(),
          // "/": (context) => MainScreen(),
        },
      ),
    );
  }
}
