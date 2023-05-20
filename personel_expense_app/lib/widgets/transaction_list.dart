import 'package:flutter/material.dart';
import '../model/transaction.dart';
import './transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransactions;
  final Function _deletetransaction;

  TransactionList(this.userTransactions, this._deletetransaction);

  @override
  Widget build(BuildContext context) {
    return userTransactions.isEmpty
        ? LayoutBuilder(builder: (ctx, constraints) {
            return Column(
              children: [
                Text(
                  "No Transaction added yet.!",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: constraints.maxHeight * 0.6,
                  // height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            );
          })
        : ListView.builder(
            itemBuilder: (context, index) {
              return TransactionItem(
                  userTransaction: userTransactions[index],
                  deletetransaction: _deletetransaction);
              // return Card(
              //   child: Row(
              //     children: [
              //       Container(
              //         margin:
              //             EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              //         padding: EdgeInsets.all(10),
              //         decoration: BoxDecoration(
              //             border: Border.all(
              //           color: Theme.of(context).primaryColor,
              //           width: 2,
              //         )),
              // child: Text(
              //   '\$${userTransactions[index].amount.toStringAsFixed(2)}',
              //           style: TextStyle(
              //             fontSize: 20,
              //             fontWeight: FontWeight.bold,
              //             color: Theme.of(context).primaryColor,
              //           ),
              //         ),
              //       ),
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              // Text(userTransactions[index].title,
              //     style: Theme.of(context).textTheme.titleLarge
              //     // TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              //     ),
              // Text(
              //   DateFormat("yyyy-MM-dd")
              //       .format(userTransactions[index].date),
              //   style: TextStyle(color: Colors.grey),
              // ),
              //         ],
              //       )
              //     ],
              //   ),
              // );
            },
            itemCount: userTransactions.length,
          );
  }
}
