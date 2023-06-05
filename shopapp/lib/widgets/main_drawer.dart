import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).padding.top,
            color: Colors.purple,
          ),
          Container(
            // margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            color: Colors.purple,
            height: 70,
            alignment: Alignment.center,
            child: Text(
              "Shop App",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text("Hello"),
        ],
      ),
    );
  }
}
