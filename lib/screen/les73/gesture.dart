import 'package:flutter/material.dart';

class myGestureDetector extends StatefulWidget {
  const myGestureDetector({Key? key}) : super(key: key);

  @override
  _myGestureDetectorState createState() => _myGestureDetectorState();
}

class _myGestureDetectorState extends State<myGestureDetector> {
  Color color1 = Colors.grey;
  Color color2 = Colors.pinkAccent;
  Color color3 = Colors.white;
  int flag = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    flag +=1;
                    if (flag % 3==1) {
                      color1 = Colors.pinkAccent;
                    }
                    else if(flag % 3==2){
                      color1 = Colors.white;
                    }
                    else{
                      color1 = Colors.grey;}
                  });
                },
                child: Container(
                  width: double.infinity,
                  color: color1,
                ),
              )),
          Expanded(
              child: GestureDetector(
            onTap: () {
              setState(() {
                flag +=1;
                if (flag % 3==1) {
                  color2 = Colors.white;
                }
                else if(flag % 3==2){
                  color2 = Colors.grey;
                }
                else{
                  color2 = Colors.pinkAccent;}
              });
            },
            child: Container(
              width: double.infinity,
              color: color2,
            ),
          )),
          Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    flag +=1;
                    if (flag % 3==1) {
                      color3 = Colors.grey;
                    }
                    else if(flag % 3==2){
                      color3 = Colors.pinkAccent;
                    }
                    else{
                      color3 = Colors.white;}
                  });
                },
                child: Container(
                  width: double.infinity,
                  color: color3,
                ),
              )),
        ],
      ),
    );
  }
}