import 'package:flutter/material.dart';

class myInkWell extends StatefulWidget {
  const myInkWell({Key? key}) : super(key: key);

  @override
  _myInkWellState createState() => _myInkWellState();
}

class _myInkWellState extends State<myInkWell> {

  int i=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.green[300])),
          Expanded(
              child: InkWell(
                onTap: (){
                  setState(() {
                    i+=1;
                  });
                },
                highlightColor:Colors.purple,
                splashColor: Colors.pinkAccent,
                focusColor: Colors.purple,
                hoverColor: Colors.yellow,
                radius: 88,
                child: Ink(
                  width: double.infinity,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'нажали $i',
                      style: TextStyle(fontSize: 65),
                    ),
                  ),
                ),
              )),
          Expanded(child: Container(color: Colors.green[300])),
        ],
      ),
    );
  }
}