import 'package:flutter/material.dart';

class myRow extends StatelessWidget {
  const myRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Основа SafeArea.
    // Внутри SafeArea находится Scaffold.
    // Scaffold body находится Container.
    // Внутри Container находится Row...
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          // width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Icon(Icons.sports_basketball, color: Colors.white, size: 70),
              Icon(Icons.sports_basketball, color: Colors.yellow, size: 70),
              Icon(Icons.sports_basketball, color: Colors.orange, size: 150),
              Icon(Icons.sports_basketball, color: Colors.red, size: 70),
            ],
          ),
        ),
      ),
    );
  }
}
