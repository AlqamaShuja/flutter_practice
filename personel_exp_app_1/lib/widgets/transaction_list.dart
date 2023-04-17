import 'package:flutter/material.dart';
import 'package:personel_exp_app_1/models/Transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTxList;
  const TransactionList(this.userTxList);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 450,
        child: ListView.builder(
          itemBuilder: (BuildContext context, index) {
            return Card(
                elevation: 6,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: ListTile(
                      leading: SizedBox(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          radius: 30,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: FittedBox(
                              child: Text(
                                "\$${userTxList[index].amount}",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      title: Text(
                        userTxList[index].title,
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {},
                      ),
                    )));
          },
          itemCount: userTxList.length,
        ));
  }
}
