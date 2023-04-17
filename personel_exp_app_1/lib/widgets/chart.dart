import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:personel_exp_app_1/models/Transaction.dart';
import 'package:personel_exp_app_1/widgets/chart_bar.dart';

class Chart extends StatelessWidget {
  // final chartData;
  final List<Transaction> recentTx;
  const Chart({
    super.key,
    required this.recentTx,
  });

  List<Map<String, dynamic>> get groupTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      var totalSum = 0.0;

      for (var i = 0; i < recentTx.length; i++) {
        if (recentTx[i].date.day == weekDay.day &&
            recentTx[i].date.month == weekDay.month &&
            recentTx[i].date.year == weekDay.year) {
          totalSum += recentTx[i].amount;
        }
      }

      print(DateFormat.E().format(weekDay).substring(0, 1).toString());
      print("total sum = ${totalSum}");

      return {
        'day': DateFormat.E().format(weekDay).substring(0, 1),
        'amount': totalSum
      };
    }).toList();
  }

  double get totalSpending {
    return groupTransactionValues.fold(0.0, (sum, tx) {
      return sum + tx["amount"];
    });
  }

  @override
  Widget build(BuildContext context) {
    print(totalSpending);
    return Card(
      elevation: 5,
      // margin: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: groupTransactionValues.map((tx) {
            return ChartBar(
              label: tx["day"],
              spendingAmount: tx["amount"],
              spendingPctOfTotal: totalSpending == 0.0
                  ? 0.0
                  : (tx['amount'] as double) / totalSpending,
            );
          }).toList(),
        ),
      ),
    );
  }
}
