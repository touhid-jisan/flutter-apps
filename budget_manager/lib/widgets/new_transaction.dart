import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function functionHandler;
  NewTransaction(this.functionHandler);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void submitData() {
    final inputTitle = titleController.text;
    final inputAmount = double.parse(amountController.text);
    
    if(inputTitle.isEmpty || inputAmount <=0) {
      return;
    }
    widget.functionHandler(inputTitle, inputAmount);
    Navigator.of(context).pop();
  }

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
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData,
            ),
            FlatButton(
              child: Text('Add Transiction'),
              textColor: Colors.purple,
              onPressed: submitData,
            ),
          ],
        ),
      ),
    );
  }
}
