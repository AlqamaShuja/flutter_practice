import 'package:flutter/material.dart';

class Headers extends StatefulWidget {
  const Headers({super.key});

  @override
  State<Headers> createState() => _HeadersState();
}

class _HeadersState extends State<Headers> {
  @override
  Widget build(BuildContext context) {
    OutlineInputBorder _borderOutlined(Color color) {
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: color,
        ),
      );
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Image.asset(
              "assets/images/logo_1.png",
              height: 39,
              width: 72,
            ),
          ),
          Expanded(
            child: Container(
              // height: 38,
              child: TextField(
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                  border: _borderOutlined(Colors.grey),
                  enabledBorder: _borderOutlined(Colors.grey),
                  focusedBorder: _borderOutlined(Colors.white),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                  hintText: "Search...",
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    color: Colors.grey,
                    onPressed: () {},
                  ),
                ),
                cursorColor: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            width: 40,
            height: 40,
            child: CircleAvatar(
              child: Image.asset("assets/images/avatar.png"),
            ),
          ),
        ],
      ),
    );
  }
}
