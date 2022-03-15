import 'package:flutter/material.dart';

enum TestList { kill, notkill }

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: MyForm(),
      ),
    )));

class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyFormState();
}

class MyFormState extends State {
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        child: Text(
          'Ваша цель',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
      ),
      SizedBox(height: 10.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            onPressed: () {},
            child: Text('Убить'),
            color: Colors.red,
            textColor: Colors.grey[900],
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Не убивать'),
            color: Colors.red,
            textColor: Colors.grey[900],
          ),
        ],
      )
    ]);
  }
}