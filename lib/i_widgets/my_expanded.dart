import 'package:flutter/material.dart';

class myExpanded extends StatelessWidget {
  const myExpanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Основа SafeArea.
    // Внутри SafeArea находится Scaffold.
    // Scaffold body находится Container.
    // Внутри Container находится Row.
    // Внутри Row находятся 3 виджета Expanded.
    // В каждом Expanded по цветному виджету Container
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          color: Colors.green,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                      width: double.infinity, height: 70, color: Colors.white),
                  flex: 2),
              Expanded(
                  child: Container(
                      width: double.infinity, height: 70, color: Colors.black)),
              Expanded(
                  child: Container(
                      width: double.infinity,
                      height: 70,
                      color: Colors.yellow),
                  flex: 3),
              // Expanded(child: Icon(Icons.sports_basketball, color: Colors.black, size: 70),),
              // Expanded(child: Icon(Icons.sports_basketball, color: Colors.yellow, size: 70)),
            ],
          ),
        ),
      ),
    );
  }
}
