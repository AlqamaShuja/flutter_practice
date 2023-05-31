import 'package:flutter/material.dart';

class FiveDot extends StatelessWidget {
  const FiveDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: MediaQuery.of(context).size.width * 0.5 - 40,
        width: 160,
        height: 160,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.amber, width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 20,
                ),
                SizedBox(
                  width: 40,
                ),
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 20,
                ),
              ],
            ),
            Container(
              child: const CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 20,
                ),
                SizedBox(
                  width: 40,
                ),
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 20,
                ),
              ],
            ),
          ],
        ));
  }
}
