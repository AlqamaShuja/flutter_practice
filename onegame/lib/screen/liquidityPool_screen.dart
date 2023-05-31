import 'package:flutter/material.dart';
import 'package:onegame/widget/header.dart';
import 'package:onegame/widget/levelWithSellLevelUp_item.dart';
import '../data/level_dummy_data.dart';

class LiquidityPool extends StatefulWidget {
  const LiquidityPool({super.key});

  @override
  State<LiquidityPool> createState() => _LiquidityPoolState();
}

class _LiquidityPoolState extends State<LiquidityPool> {
  String dropdownValue = 'Sage 01';
  List<String> dropdownItemList = ['Sage 01', 'Sage 02', 'Sage 03', 'Sage 04'];

  Widget _imageWithText(String imageName, String title, String subTitle) {
    return Column(
      children: [
        Container(
          child: Image.asset(
            "assets/images/$imageName",
            height: 50,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 3),
          child: Text(
            subTitle,
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.9),
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }

  Widget _verticalLine(double height) {
    return Container(
      // width: 2,
      alignment: Alignment.center,
      height: height,
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(
            width: 1.0,
            color: Color.fromRGBO(249, 244, 244, 0.298),
          ),
        ),
      ),
    );
  }

  Widget _horizontalLine(double h) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 13,
      ),
      width: double.infinity,
      height: h,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(249, 244, 244, 0.298),
      ),
    );
  }

  Widget _dropDownBtn() {
    // Step 2.
    return Container(
      // padding: const EdgeInsets.all(14.0),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.amber,
          width: 1.0,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          // Step 3.
          value: dropdownValue,
          icon: const Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Colors.amber,
          ),
          dropdownColor: const Color.fromRGBO(0, 0, 0, 0.6),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          // underline: SizedBox(),
          isExpanded: true,
          focusColor: Colors.amber,
          // Step 4.
          items: dropdownItemList.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            );
          }).toList(),
          // Step 5.
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
          child: Column(
            children: [
              const Headers(),
              Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                ),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Liquidity Pool",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _imageWithText(
                    "jam_purple.png",
                    "56 Gems",
                    "in your wallet = \$345",
                  ),
                  _verticalLine(80),
                  _imageWithText(
                    "coin.png",
                    "425 \$0GI",
                    "in your wallet = \$345",
                  ),
                  _verticalLine(80),
                  _imageWithText(
                    "eth_yellow.png",
                    "4738 ETH",
                    "in your wallet = \$345",
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              _horizontalLine(2),
              Container(
                // padding: EdgeInsets.symmetric(
                //   vertical: 20,
                // ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "MY GEMS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 180,
                      child: _dropDownBtn(),
                    ),
                  ],
                ),
              ),
              _horizontalLine(2),
              Container(
                height: 300,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent:
                        MediaQuery.of(context).size.width * 0.5 - 25 - 20,
                    childAspectRatio: 0.67,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  children: allLevels
                      .map(
                        (eachLevel) => LevelWithSellAndLevelUp(
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
        ),
      ),
    );
  }
}
