import 'package:flutter/material.dart';

class myBottons extends StatelessWidget {
  const myBottons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 100),
        alignment: AlignmentDirectional.center,
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  print('ElevatedButton');
                },
                child: Text('ElevatedButton'),
                onLongPress: () {
                  print('ElevatedButton');
                }),
            OutlinedButton(
                onPressed: () {
                  print('OutlinedButton');
                },
                child: Text('OutlinedButton'),
                onLongPress: () {
                  print('OutlinedButton');
                }),
            TextButton(
                onPressed: () {
                  print('TextButton');
                },
                child: Text('TextButton'),
                onLongPress: () {
                  print('TextButton');
                }),
            IconButton(
              onPressed: () {
                print('IconButton');
              },
              icon: Icon(Icons.add_circle_outlined),
            ),
          ],
        ));
  }
}
