import 'package:flutter/material.dart';

class myScaffold extends StatelessWidget {
const myScaffold({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
return const SafeArea(
child: Scaffold(
backgroundColor: Colors.deepOrange,
body: Icon(Icons.sports_basketball, size: 200),
),
);

// return const Scaffold(
//   backgroundColor: Colors.deepOrange,
//   body: SafeArea(
//     child: Icon(Icons.sports_basketball, size: 200),
//   ),
// );

return const Scaffold(
backgroundColor: Colors.lightBlueAccent,
body: Icon(Icons.sports_basketball, size: 200),
);
}
}