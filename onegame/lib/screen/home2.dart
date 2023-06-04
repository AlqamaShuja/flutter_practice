import 'package:flutter/material.dart';
import 'package:onegame/data/game_dummy_data.dart';
import 'package:onegame/screen/liquidityPool_screen.dart';
import 'package:onegame/screen/stacking_screen.dart';
import '../widget/header.dart';
import '../widget/game_item.dart';

class FeaturedGame extends StatefulWidget {
  const FeaturedGame({super.key});

  @override
  State<FeaturedGame> createState() => _FeaturedGameState();
}

class _FeaturedGameState extends State<FeaturedGame> {
  int _currentIndex = 0;

  List widgetToShow = [
    FeaturedGame2(),
    StackingScreen(),
    LiquidityPool(),
  ];

  void _changeTab(int index) {
    print(index);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetToShow[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _changeTab,
        backgroundColor: Color.fromRGBO(25, 24, 24, 0.698),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: "Stack",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart_sharp),
            label: "Liquidity",
          ),
        ],
      ),
    );
  }
}

class FeaturedGame2 extends StatelessWidget {
  const FeaturedGame2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            height: 600,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                // childAspectRatio: 0.75,
              ),
              itemCount: GAME_DUMMY.length,
              itemBuilder: (context, index) => GameItem(),
            ),
          )
        ],
      ),
    );
  }
}
