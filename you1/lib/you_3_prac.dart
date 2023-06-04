import 'package:flutter/material.dart';
import './widgets/SimpleAnimation.dart';
import './screens/menu_screen.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  void _menuPage(context) {
    Navigator.of(context).pushNamed(MenuScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // padding: EdgeInsets.only(
            //     top: MediaQuery.of(context).size.height * 0.4,
            //     left: 20,
            //     right: 20,
            //     bottom: 10),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/food_main.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.1),
                  ],
                  begin: Alignment.bottomCenter,
                  stops: [0.3, 0.8],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .4,
                  ),
                  SimpleAnimation(
                    child: Text(
                      "Taking Order \nFor Delivery",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    duration: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SimpleAnimation(
                    child: Container(
                      padding: EdgeInsets.only(left: 6),
                      child: Text(
                        "See Restaurent nearby by \nadding location",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    duration: 2,
                  ),
                  SizedBox(
                    height: 110,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () => _menuPage(context),
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      "Now deliver to your door step 24/7",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
