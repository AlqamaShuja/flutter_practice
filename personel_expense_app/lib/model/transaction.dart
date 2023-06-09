
import 'package:flutter/foundation.dart';

class Transaction {
  final double amount;
  final String id;
  final String title;
  final DateTime date;

  Transaction(
      {@required this.id,
      @required this.amount,
      @required this.title,
      @required this.date});
}
