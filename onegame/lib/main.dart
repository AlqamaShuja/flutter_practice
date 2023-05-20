import 'package:flutter/material.dart';

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
      ),
      home: OneGame(),
    );
  }
}

class OneGame extends StatefulWidget {
  const OneGame({super.key});

  @override
  State<OneGame> createState() => _OneGameState();
}

class _OneGameState extends State<OneGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (ctx, constraints) {
          return Container(
            color: Theme.of(context).primaryColor,
            // margin: const EdgeInsets.only(top: 55),
            padding: const EdgeInsets.only(top: 90),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      "assets/images/one.png",
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Container(
                    // height: 200,
                    margin: EdgeInsets.only(top: 25),
                    child: Image.asset(
                      "assets/images/two.png",
                      height: 300,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: const Text(
                    "Thank You",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 25),
                  width: 200,
                  child: const Text(
                    "Successfully got your NFTs from One Game studio.",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
