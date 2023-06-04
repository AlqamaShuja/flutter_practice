import 'package:flutter/material.dart';
import 'package:onegame/widget/level_item.dart';
// import '../models/level_model.dart';
import '../widget/header.dart';
import '../data/level_dummy_data.dart';

class StackingScreen extends StatelessWidget {
  StackingScreen({super.key});

  Widget _jamImageWithText() {
    return Container(
      width: 150,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(
              "assets/images/jam_purple.png",
              width: 90,
              height: 90,
            ),
          ),
          const Text(
            "1 gems rewarded on daily basis",
            style: TextStyle(color: Colors.grey, fontSize: 16),
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _rewardWithDrawBtn() {
    return Container(
      decoration: BoxDecoration(
          gradient: RadialGradient(colors: [
        Colors.purple.withOpacity(0.1),
        Colors.purple.withOpacity(0.4),
      ], radius: 4, center: Alignment.centerRight
              // begin: Alignment.topRight, end: Alignment.centerLeft,
              )),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "1923874",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 38,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6),
            child: const Text(
              "Gems Reward",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
            ),
          ),
          // InkWell(
          //   onTap: () {},
          //   child:
          Container(
            margin: const EdgeInsets.only(
              top: 16,
              left: 10,
              right: 10,
            ),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                // colors: [Color.fromRGBO(101, 51, 3, 1.0), Color.fromRGBO(222, 150, 52, 1.0),Color.fromRGBO(152, 79, 4, 1.0),],
                colors: [
                  Colors.brown.withOpacity(0.9),
                  Colors.orange.withOpacity(0.8)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Text(
              "WITHDRAW →",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // ),
        ],
      ),
    );
  }

  Widget _stakeUnstake(context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 30,
      ),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: const Text(
                  "STAKE",
                  style: TextStyle(color: Colors.amber, fontSize: 18),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5 - 25,
                height: 4,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.amber,
                      width: 3.0,
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: const Text(
                  "UNSTAKE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5 - 25,
                height: 3,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Headers(),
          const SizedBox(
            height: 26,
          ),
          Container(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "Staking",
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _jamImageWithText(),
              _rewardWithDrawBtn(),
            ],
          ),
          _stakeUnstake(context),
          Container(
            height: 400,
            child: GridView(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent:
                    MediaQuery.of(context).size.width * 0.5 - 25 - 20,
                childAspectRatio: 4 / 4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              children: allLevels
                  .map(
                    (eachLevel) => LevelItem(
                      levelNo: eachLevel.levelNo,
                      id: eachLevel.id,
                      valueInDolloar: eachLevel.valueInDolloar,
                      valueInOgi: eachLevel.valueInOgi,
                      imageName: eachLevel.imageName,
                      color: eachLevel.color,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    )
        // Text(
        //   "Stacking Screen",
        //   style: Theme.of(context).textTheme.titleLarge,
        // ),
        );
  }
}
