import 'package:flutter/material.dart';
import '../widgets/user_transaction.dart';
class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function functionHandler;
  NewTransaction(this.functionHandler);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Enter Title'),
              //onChanged: (value) => titleInput=value,
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Enter Amount'),
              //onChanged: (value) => amountInput=value,
              controller: amountController,
            ),
            FlatButton(
                child: Text('Add Transiction'),
                textColor: Colors.purple,
                onPressed: () {
                  // print(titleInput);
                  // print(amountInput);
                  print(titleController.text);
                  functionHandler(titleController.text,  double.parse(amountController.text));
                })
          ],
        ),
      ),
    );
  }
}
