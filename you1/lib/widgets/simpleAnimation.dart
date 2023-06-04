import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class SimpleAnimation extends StatelessWidget {
  final Widget child;
  final int duration;
  const SimpleAnimation({required this.child, required this.duration, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlayAnimationBuilder<double>(
      tween: Tween(begin: 250, end: 0), // value for offset x-coordinate
      duration: Duration(seconds: duration),
      curve: Curves.easeIn, // non-linear animation
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(value, 0), // use animated value for x-coordinate
          child: child,
        );
      },
      child: Container(
        width: double.infinity,
        child: child,
      ),
    );
  }
}
