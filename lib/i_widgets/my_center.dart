import 'package:flutter/material.dart';

class myCenter extends StatelessWidget {
  const myCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Основа SafeArea.
    // Внутри SafeArea находится Scaffold.
    // Scaffold body находится Center...
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Icon(
            Icons.sports_basketball,
            color: Colors.white,
            size: 200,
          ),
        ),
      ),
    );

  }
}
