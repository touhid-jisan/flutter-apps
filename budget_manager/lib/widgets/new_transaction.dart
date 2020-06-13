import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function functionHandler;
  NewTransaction(this.functionHandler);

  void submitData() {
    final inputTitle = titleController.text;
    final inputAmount = double.parse(amountController.text);
    
    if(inputTitle.isEmpty || inputAmount <=0) {
      return;
    }
    functionHandler(inputTitle, inputAmount);
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
