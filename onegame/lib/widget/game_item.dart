import 'package:flutter/material.dart';

class GameItem extends StatelessWidget {
  const GameItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/game/madden_mobile.png',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  // padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),

                  child: Text(
                    '  Top 6  ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 20,
              ),
              const Text(
                "Lords Mobile",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Row(
                  children: const [
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.watch_later_outlined,
                      color: Colors.green,
                      size: 9,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "21h 25m",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      // Container(
      //   width: 180,
      //   height: 180,
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage("assets/images/game/madden_mobile.png"),
      //     ),
      //   ),
      //   alignment: Alignment.topRight,
      //   child: Text(
      //     "Top 6",
      //     style: TextStyle(
      //       color: Colors.white,
      //       backgroundColor: Colors.red,
      //     ),
      //   ),
      // ),
      //     Row(
      //       children: [
      //         Container(
      //           width: 140,
      //           child: Text(
      //             "Lords Mobile",
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 18,
      //             ),
      //           ),
      //         ),
      //         // Container(
      //         //   width: 10,
      //         //   child: Row(
      //         //     children: [
      //         //       Icon(
      //         //         Icons.watch_later_outlined,
      //         //         color: Colors.green,
      //         //       ),
      //         //       SizedBox(
      //         //         width: 2,
      //         //       ),
      //         //       Text(
      //         //         "21h 25m",
      //         //         style: TextStyle(
      //         //           color: Colors.white,
      //         //         ),
      //         //       ),
      //         //     ],
      //         //   ),
      //         // )
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}


// PageViewBuilder