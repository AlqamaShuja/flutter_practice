import 'package:flutter/material.dart';

class LevelItem extends StatelessWidget {
  final String id;
  final String imageName;
  final String levelNo;
  final String valueInDolloar;
  final String valueInOgi;
  final Color color;

  const LevelItem({
    super.key,
    required this.levelNo,
    required this.id,
    required this.valueInDolloar,
    required this.valueInOgi,
    required this.imageName,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(12),
        // color: Colors.black,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.2),
              color.withOpacity(0.15),
              color.withOpacity(0.07),
            ],
            begin: Alignment.topCenter,
            end: Alignment.center,
          ),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          ),
        ),
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/images/$imageName",
                height: 75,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 14),
              child: Text(
                levelNo,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Text(
                "${valueInDolloar} | ${valueInOgi}",
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
