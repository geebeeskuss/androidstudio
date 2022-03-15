import 'package:flutter/material.dart';

enum TestList { kill, notkill }

void main() => runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('Авторизация'),
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
                    // if (!value.contains('@')) return 'Должен содержать @';
                  },
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    const Spacer(),
                    Container(
                      child:
                      Text(
                        'Еще нет аккаунта?',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    RaisedButton(
                      onPressed: () {
                      },
                      child: Text('Регистрация'),
                      color: Colors.red,
                      textColor: Colors.black54,
                    ),
                    // const Spacer(),
                    // RaisedButton(
                    //   onPressed: () {
                    //   },
                    //   child: Text('Не убивать'),
                    //   color: Colors.red,
                    //   textColor: Colors.black54,
                    // ),
                    const Spacer(),
                  ],
                ),

                SizedBox(height: 10.0),
                RaisedButton(
                  onPressed: () {
                  },
                  child: Text('Войти'),
                  color: Colors.red,
                  textColor: Colors.black54,
                ),
              ],
            )));
  }
}
