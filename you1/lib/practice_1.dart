import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:you1/widgets/main_drawer.dart';

class PracticeOne extends StatelessWidget {
  const PracticeOne({super.key});

  Widget _promoCard(String imgName) {
    return AspectRatio(
      aspectRatio: 2.65 / 3,
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 7,
        ),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(imgName),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.2, 0.7],
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.1),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        brightness: Brightness.light,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black87,
        ),
      ),
      // drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 20,
                  bottom: 1,
                  left: 15,
                  right: 15,
                ),
                width: double.infinity,
                color: Colors.white,
                child: Text(
                  "Find Your",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black87,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 1, horizontal: 15),
                color: Colors.white,
                width: double.infinity,
                child: Text(
                  "Inspiration",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                color: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(244, 243, 243, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  // padding: EdgeInsets.symmetric(vertical: 14, horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black87,
                      ),
                      hintText: "Search here",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 16,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 20,
                ),
                child: Text(
                  "Promo Today",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _promoCard("assets/images/one.jpg"),
                    _promoCard("assets/images/two.jpg"),
                    _promoCard("assets/images/three.jpg"),
                    _promoCard("assets/images/four.jpg"),
                    _promoCard("assets/images/five.jpg"),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("assets/images/four.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.1),
                      ],
                      begin: Alignment.bottomRight,
                      stops: [0.1, 0.3],
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
