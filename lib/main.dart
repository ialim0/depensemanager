import './widgets/user_transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyhomPage(),
    );
  }
}

class MyhomPage extends StatelessWidget {
  // late String titleinput;
  // late String amountinput;
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestionnaire de dépenses"),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              child: Container(
                width: double.infinity,
                child: Text(
                  "Carte",
                ),
              ),
              color: Color.fromARGB(255, 40, 74, 185),
              elevation: 6,
            ),
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
