import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);
  void SubmitData() {
    final enteredTitle = titlecontroller.text;
    final enteredAmount = double.parse(amountcontroller.text);
    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addTx(
      enteredTitle,
      enteredAmount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Titre de la dépense',
              ),
              onSubmitted: (_) => SubmitData,

              //onChanged: (val) {
              // titleinput = val;
              // },
              controller: titlecontroller,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Montant dépensé',
              ),
              keyboardType: TextInputType.number,
              onSubmitted: (_) => SubmitData,
              // onChanged: (val) {
              // amountinput = val;
              //  },
              controller: amountcontroller,
            ),
            ElevatedButton(
              onPressed: SubmitData,
              child: Text(
                "Ajouter dépense",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
