import 'package:flutter/material.dart';

class ThreeDot extends StatelessWidget {
  const ThreeDot({super.key});

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 4),
            alignment: Alignment.topLeft,
            child: const CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 20,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            // padding: EdgeInsets.only(right: 10),
            // alignment: Alignment.bottomRight,
            child: const CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 20,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            padding: const EdgeInsets.only(right: 4),
            alignment: Alignment.bottomRight,
            child: const CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 20,
            ),
          ),
        ],
      ),
    );
  }
}
