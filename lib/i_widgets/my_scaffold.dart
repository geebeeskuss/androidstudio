import 'package:flutter/material.dart';

class myScaffold extends StatelessWidget {
  const myScaffold({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown,
        body: Icon(Icons.fingerprint, size: 200, color: Colors.amber,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.brown,
      body: SafeArea(
        child: Icon(Icons.fingerprint, size: 200, color: Colors.amber,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.brown,
      body: Icon(Icons.fingerprint, size: 200, color: Colors.amber,
      ),
    );
  }
}
