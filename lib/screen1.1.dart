import 'package:flutter/material.dart';

enum TestList { kill, notkill }

void main() => runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Регистрация'),
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
  final _formKey = GlobalKey<FormState>();
  TestList _test = TestList.kill;


  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    'Данные',
                    style: TextStyle(color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                ),
                TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Логин',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) return 'Не заполнен логин';
                    }),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Введите пароль',
                  ),
                  validator: (value) {
                    if (value!.isEmpty)
                      return 'Не заполнен пароль';
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Повторите пароль',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) return 'Не заполнен пароль';
                  },
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10.0),
                Container(
                  child:
                  Text(
                    'Ваша цель',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                ),
                SizedBox(height: 10.0),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     SizedBox(width: 3.0),
                //   ],
                // ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                      },
                      child: Text('Убить'),
                      color: Colors.red,
                      textColor: Colors.black54,
                    ),
                    const Spacer(),
                    RaisedButton(
                      onPressed: () {
                      },
                      child: Text('Не убивать'),
                      color: Colors.red,
                      textColor: Colors.black54,
                    ),
                  ],
                ),

                SizedBox(height: 10.0),
                RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Color color = Colors.red;
                      String text;

                      if (_test == null)
                        text = 'Какого ваше решение';
                      else {
                        text = 'Изменения сохранены';
                        color = Colors.green;
                      }

                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(text),
                        backgroundColor: color,
                      ));
                    }
                  },
                  child: Text('Сохранить'),
                  color: Colors.red,
                  textColor: Colors.black54,
                ),
              ],
            )));
  }
}
