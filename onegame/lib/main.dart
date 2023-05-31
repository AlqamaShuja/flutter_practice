import 'package:flutter/material.dart';
import 'package:onegame/screen/home2.dart';
import './screen/liquidityPool_screen.dart';
// import './widget/imageKashan.dart';
import './screen/stacking_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "One Game",
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: "Poppins",
        canvasColor: Color.fromRGBO(0, 0, 0, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              titleMedium: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              titleSmall: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
      ).copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.black,
              secondary: Colors.white,
              onSecondary: Color.fromRGBO(0, 0, 0, 0.57),
            ),
      ),
      // home: OneGame(),
      initialRoute: "/featured-game",
      routes: {
        "/": (ctx) => StackingScreen(),
        "/liquidity-pool": (ctx) => LiquidityPool(),
        "/featured-game": (ctx) => FeaturedGame(),
      },
    );
  }
}

// class OneGame extends StatefulWidget {
//   const OneGame({super.key});

//   @override
//   State<OneGame> createState() => _OneGameState();
// }

// class _OneGameState extends State<OneGame> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StackingScreen(),
//       // LayoutBuilder(
//       //   builder: (ctx, constraints) {
//       //     return ImageKashan();
//       //   },
//       // ),
//     );
//   }
// }
