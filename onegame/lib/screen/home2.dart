import 'package:flutter/material.dart';
import 'package:onegame/data/game_dummy_data.dart';
import '../widget/header.dart';
import '../widget/game_item.dart';

class FeaturedGame extends StatefulWidget {
  const FeaturedGame({super.key});

  @override
  State<FeaturedGame> createState() => _FeaturedGameState();
}

class _FeaturedGameState extends State<FeaturedGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Headers(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Featured Games",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 500,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemCount: GAME_DUMMY.length,
                itemBuilder: (context, index) => GameItem(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
