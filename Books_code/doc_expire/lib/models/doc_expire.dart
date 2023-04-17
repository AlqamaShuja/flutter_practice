import 'package:flutter/foundation.dart';

class DocExpire {
  final int id;
  final String title;
  final DateTime date;
  final String daysCount;

  DocExpire(
      {required this.id,
      required this.title,
      required this.date,
      required this.daysCount});
}
