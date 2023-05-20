import 'package:flutter/material.dart';
import '../model//transaction.dart';
import 'package:intl/intl.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key key,
    @required this.userTransaction,
    @required Function deletetransaction,
  })  : _deletetransaction = deletetransaction,
        super(key: key);

  final Transaction userTransaction;
  final Function _deletetransaction;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            child: Padding(
                padding: EdgeInsets.all(6),
                child: FittedBox(
                  child: Text(
                    '\$${userTransaction.amount}',
                  ),
                )),
          ),
          title: Text(
            userTransaction.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          subtitle: Text(
            DateFormat("yyyy-MM-dd").format(userTransaction.date),
            style: TextStyle(color: Colors.grey),
          ),
          trailing: MediaQuery.of(context).size.width > 460
              ? TextButton.icon(
                  onPressed: () => _deletetransaction(userTransaction.id),
                  icon: Icon(Icons.delete),
                  label: Text("Delete"),
                  style: TextButton.styleFrom(
                    foregroundColor: Theme.of(context).errorColor,
                  ),
                )
              : IconButton(
                  icon: Icon(Icons.delete),
                  color: Theme.of(context).errorColor,
                  onPressed: () => _deletetransaction(userTransaction.id),
                ),
        ));
  }
}
