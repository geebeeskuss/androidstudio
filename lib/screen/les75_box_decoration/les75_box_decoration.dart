import 'package:flutter/material.dart';

class myBoxDecoration extends StatefulWidget {
  const myBoxDecoration({Key? key}) : super(key: key);

  @override
  State<myBoxDecoration> createState() => _myBoxDecorationState();
}

class _myBoxDecorationState extends State<myBoxDecoration> {
  bool nazhata = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lightbulb,
                size: 150,
                color: nazhata ? Colors.yellowAccent : Colors.black,
              ),
              const SizedBox(height: 50),
              Container(
                width: 400,
                height: 250,
                // color: Colors.green,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  // gradient: LinearGradient(
                  //   colors: [Colors.pinkAccent, Colors.indigo],
                  //   begin: Alignment.bottomLeft,
                  //   end: Alignment.topRight,
                  // ),
                  border: Border.all(width: 3),
                  // borderRadius: BorderRadius.vertical(
                  //     top: Radius.elliptical(100, 30), bottom: Radius.circular(80)),
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.elliptical(100, 30), right: Radius.circular(80)),
                  // border: Border(
                  //   top: BorderSide(width: 10),
                  //   left: BorderSide(width: 20, color: Colors.green),
                  // ),

                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.redAccent,
                  //     blurRadius: 10,
                  //     spreadRadius: 10,
                  //     offset: Offset(17, 34),
                  //   ),
                  //   BoxShadow(
                  //     color: Colors.greenAccent,
                  //     blurRadius: 10,
                  //     spreadRadius: 10,
                  //     offset: Offset(-17, -34),
                  //   ),
                  //   BoxShadow(
                  //     color: Colors.yellowAccent,
                  //     // blurRadius: 40,
                  //     spreadRadius: 10,
                  //     offset: Offset(-17, 34),
                  //   ),
                  // ],

                  // shape: BoxShape.circle,
                ),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nazhata = !nazhata;
                      });
                    },
                    child: Text(
                      nazhata ? 'Включить' : 'Выключить',
                      style: const TextStyle(fontSize: 50),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}