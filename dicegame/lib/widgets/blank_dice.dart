import 'package:flutter/material.dart';

class BlankDice extends StatelessWidget {
  const BlankDice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.5 - 40,
      width: 160,
      height: 160,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.amber, width: 2.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          // child: CircleAvatar(
          //   backgroundColor: Colors.amber,
          //   radius: 20,
          // ),
          ),
    );
  }
}
