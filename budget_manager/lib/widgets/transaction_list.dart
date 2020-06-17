import '../models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;
  TransactionList(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 325,
      child: transaction.isEmpty
          ? Column(
              children: <Widget>[
                Text('Transaction list is empty', style: Theme.of(context).textTheme.title,),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 200,
                  child: Image.asset('assets/images/waiting.png', fit: BoxFit.cover,),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).primaryColorDark,
                              width: 2),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          //tx.amount.toString(),
                          '\$: ${transaction[index].amount.toStringAsFixed(2)}', // string interpolation
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.blue),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            transaction[index].title,
                            style: Theme.of(context).textTheme.title,
                          ),
                          Text(
                            DateFormat.yMMMMEEEEd()
                                .format(transaction[index].date),
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              itemCount: transaction.length,
            ),
    );
  }
}
