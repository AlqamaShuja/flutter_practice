import 'dart:ffi';

import 'package:flutter/material.dart';
import '../models/food_model.dart';
import '../models/food_details.dart';

class MenuScreen extends StatelessWidget {
  static String routeName = '/menu-screen';
  MenuScreen({super.key});

  final List<FoodCategory> _foodList = [
    FoodCategory(name: "Pizza", isActive: true),
    FoodCategory(name: "Zinger", isActive: false),
    FoodCategory(name: "Beef Burger", isActive: false),
    FoodCategory(name: "Salad", isActive: false),
    FoodCategory(name: "Biryani", isActive: false),
    FoodCategory(name: "White Pulau", isActive: false),
  ];

  final List<FoodDetails> _foodDetailsList = [
    FoodDetails(
      id: "f1",
      amount: '12.90',
      imageName: "food1.jpg",
      details: "Vegetarian Pizza",
      isFavorite: true,
    ),
    FoodDetails(
      id: "f2",
      amount: '14.00',
      imageName: "food2.jpg",
      details: "Beef Burger",
      isFavorite: false,
    ),
    FoodDetails(
      id: "f3",
      amount: '18.50',
      imageName: "food3.jpg",
      details: "Chicken Biryani",
      isFavorite: true,
    ),
    FoodDetails(
      id: "f4",
      amount: '14.30',
      imageName: "food4.jpg",
      details: "Huqaba Pulau",
      isFavorite: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: Icon(null),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.grey.shade800,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Food Delivery",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                ),
                // width: double.infinity,
                height: 42,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: _foodList
                      .map((item) =>
                          _foodItems(name: item.name, isActive: item.isActive))
                      .toList(),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                "Free Delivery",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 15,
                ),
                // width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.6,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: _foodDetailsList
                      .map((fd) => _foodDetails(
                            ctx: context,
                            food: fd,
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _foodDetails({
    required BuildContext ctx,
    required FoodDetails food,
  }) {
    return Container(
      width: MediaQuery.of(ctx).size.width * 0.9 - 40,
      margin: EdgeInsets.only(
        right: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.amber,
        image: DecorationImage(
          image: AssetImage("assets/images/" + food.imageName),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.3),
            ],
            begin: Alignment.bottomRight,
            stops: [0.2, 0.8],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15, top: 12),
                  child: Icon(
                    food.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                left: 15,
                bottom: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$" + food.amount,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    food.details,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _foodItems({required String name, required bool isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      margin: EdgeInsets.only(
        right: 7,
      ),
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isActive ? Colors.amber : Colors.grey.shade200,
      ),
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
