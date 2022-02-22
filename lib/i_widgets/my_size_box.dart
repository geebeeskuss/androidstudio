import 'package:flutter/material.dart';

class mySizeBox extends StatelessWidget {
  const mySizeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Основа SafeArea.
    // Внутри SafeArea находится Scaffold.
    // Scaffold body находится Container.
    // Внутри Container находится Column.
    // Внутри Column находятся виджеты Icon и SizedBox.
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          // width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(Icons.sports_basketball, color: Colors.white, size: 70),
              SizedBox(height: 30),
              Icon(Icons.sports_basketball, color: Colors.yellow, size: 70),
              SizedBox(height: 60),
              Icon(Icons.sports_basketball, color: Colors.orange, size: 150),
              SizedBox(height: 90),
              Icon(Icons.sports_basketball, color: Colors.red, size: 70),
            ],
          ),
        ),
      ),
    );
  }
}
