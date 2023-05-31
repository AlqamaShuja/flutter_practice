import 'package:flutter/material.dart';

class Level {
  final String id;
  final String imageName;
  final String levelNo;
  final String valueInDolloar;
  final String valueInOgi;
  final Color color;

  Level({
    required this.id,
    required this.imageName,
    required this.levelNo,
    required this.valueInDolloar,
    required this.valueInOgi,
    this.color = Colors.purple,
  });
}
