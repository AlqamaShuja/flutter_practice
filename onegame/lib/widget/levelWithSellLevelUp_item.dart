import 'package:flutter/material.dart';

class LevelWithSellAndLevelUp extends StatelessWidget {
  final String id;
  final String imageName;
  final String levelNo;
  final String valueInDolloar;
  final String valueInOgi;
  final Color color;

  const LevelWithSellAndLevelUp({
    super.key,
    required this.levelNo,
    required this.id,
    required this.valueInDolloar,
    required this.valueInOgi,
    required this.imageName,
    required this.color,
  });

  Widget _levelUp_Sell(String title, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.amber),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.only(right: 5),
                child: Icon(
                  icon,
                  color: Colors.grey,
                )),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          _levelUp_Sell("LEVEL UP", Icons.autorenew_sharp),
          _levelUp_Sell("SELL", Icons.loyalty_outlined),
        ],
      ),
    );
  }
}
