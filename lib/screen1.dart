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
  // bool _dry = false;
  // bool _wet = false;
  // bool _natural = false;

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
                    style: TextStyle(color: Colors.red,fontSize: 20, fontWeight: FontWeight.bold),
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
                // TextFormField(
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(),
                //       labelText: 'Кличка питомца',
                //     ),
                //     validator: (value) {
                //       if (value!.isEmpty) return 'Не заполнена кличка';
                //     }),
                // SizedBox(height: 10.0),
                // TextFormField(
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(),
                //       labelText: 'Порода',
                //     ),
                //     validator: (value) {
                //       if (value!.isEmpty) return 'Не заполнена порода';
                //     }),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 3.0),
                    // Text(
                    //   'Выберите пол',
                    //   style:
                    //   TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    // ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        // if (_formKey.currentState!.validate()) {
                        //   Color color = Colors.red;
                        //   String text;
                        //
                        //   // if (_test == null)
                        //   //   text = 'Какого ваше решение';
                        //   // // else if (_dry | _wet | _natural != true) {
                        //   // //   text = 'Выберите вид корма';}
                        //   // else {
                        //   //   text = 'Изменения сохранены';
                        //   //   color = Colors.green;
                        //   // }
                        //
                        //   Scaffold.of(context).showSnackBar(SnackBar(
                        //     content: Text('мяу'),
                        //     backgroundColor: color,
                        //   ));
                        // }
                      },
                      child: Text('Убить'),
                      color: Colors.red,
                      textColor: Colors.black54,
                    ),
                    const Spacer(),
                    RaisedButton(
                      onPressed: () {
                        // if (_formKey.currentState!.validate()) {
                        //   Color color = Colors.red;
                        //   String text;

                          // if (_test == null)
                          //   text = 'Какого ваше решение';
                          // // else if (_dry | _wet | _natural != true) {
                          // //   text = 'Выберите вид корма';}
                          // else {
                          //   text = 'Изменения сохранены';
                          //   color = Colors.green;
                          // }

                          // Scaffold.of(context).showSnackBar(SnackBar(
                          //   content: Text('мяу'),
                          //   backgroundColor: color,
                          // ));
                        // }
                      },
                      child: Text('Не убивать'),
                      color: Colors.red,
                      textColor: Colors.black54,
                    ),



                    // Flexible(
                    //   fit: FlexFit.loose,
                    //   child: RadioListTile(
                    //     title: const Text('Убить'),
                    //     value: TestList.kill,
                    //     groupValue: _test,
                    //     onChanged: (TestList? value) {
                    //       setState(() {
                    //         _test = value!;
                    //       });
                    //     },
                    //   ),
                    // ),
                    // Flexible(
                    //   fit: FlexFit.loose,
                    //   child: RadioListTile(
                    //     title: const Text('Не убивать'),
                    //     value: TestList.notkill,
                    //     groupValue: _test,
                    //     onChanged: (TestList? value) {
                    //       setState(() {
                    //         _test = value!;
                    //       });
                    //     },
                    //   ),
                    // )
                  ],
                ),
                SizedBox(height: 10.0),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     SizedBox(width: 3.0),
                //     Text(
                //       'Выберите корм',
                //       style:
                //       TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                //     ),
                //   ],
                // ),
                // SizedBox(height: 10.0),
                // CheckboxListTile(
                //     value: _dry,
                //     title: Text('Сухой корм'),
                //     onChanged: (bool? value) => setState(() => _dry = value!)),
                // CheckboxListTile(
                //     value: _wet,
                //     title: Text('Влажный корм'),
                //     onChanged: (bool? value) => setState(() => _wet = value!)),
                // CheckboxListTile(
                //     value: _natural,
                //     title: Text('Натуральный корм'),
                //     onChanged: (bool? value) =>
                //         setState(() => _natural = value!)),
                SizedBox(height: 10.0),
                RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Color color = Colors.red;
                      String text;

                      if (_test == null)
                        text = 'Какого ваше решение';
                      // else if (_dry | _wet | _natural != true) {
                      //   text = 'Выберите вид корма';}
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