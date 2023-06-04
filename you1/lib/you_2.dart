import 'package:flutter/material.dart';

class YouTube2 extends StatefulWidget {
  const YouTube2({super.key});

  @override
  State<YouTube2> createState() => _YouTube2State();
}

class _YouTube2State extends State<YouTube2>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int _totalPage = 3;

  void _onScroll() {
    print("scroll");
  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 1,
    )..addListener(_onScroll);
    super.initState();
  }

  Widget makePage(
    int page,
    String title,
    String imgName,
    Color bgColor,
    String desc,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        image: DecorationImage(
          image: AssetImage(imgName),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.1),
          ],
          begin: Alignment.bottomRight,
          stops: [0.2, 0.8],
        )),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    page.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "/" + _totalPage.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                        Text(
                          "4.0",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          "(2300)",
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: Text(
                        desc,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          height: 1.9,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Read More",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage(
              1,
              "Yosemite National Park",
              "assets/images/one.jpg",
              Colors.pink,
              "Very good your videos, I just discovered the channel and I'm already in love. Please don't stop recording videos!!! I just finish this trip, but is that ok a little bit laggy on iOS simulator? Or we should take improvement on this trip."),
          makePage(
              1,
              "Very Good Your Videos",
              "assets/images/two.jpg",
              Colors.limeAccent,
              "Very good your videos, I just discovered the channel and I'm already in love. Please don't stop recording videos!!!"),
          makePage(
              1,
              "CANADA USA NIPAL",
              "assets/images/three.jpg",
              Colors.cyanAccent,
              "Very good your videos, I just discovered the channel and I'm already in love. Please don't stop recording videos!!! Very good your videos, I just discovered the channel and I'm already in love."),
        ],
      ),
    );
  }
}
