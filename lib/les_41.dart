import 'package:flutter/material.dart';

// void main(){
//   runApp(
//     const Align(
//       alignment: Alignment(-1,0.5),
//       //сделай чтобы во все 4 угла по очереди
//       child: Text(
//         'мяук',
//         textDirection: TextDirection.ltr,
//         style: TextStyle(color: Colors.pink,
//         backgroundColor: Colors.black),
//       ),
//     ),
//   );
// }
// void main(){
//   runApp(
//     const Center(
//       child: Text(
//         'мяук',
//         textDirection: TextDirection.ltr,
//         style: TextStyle(color: Colors.pink,
//             backgroundColor: Colors.black),
//       ),
//     ),
//   );
// }
//
// void main(){
//   runApp(
//     const Padding(padding: EdgeInsets.all(40),
//     child: Center(
//       child: Text(
//         'мяук',
//         textDirection: TextDirection.ltr,
//         style: TextStyle(color: Colors.pink,
//             backgroundColor: Colors.black),
//       ),
//     ),
//     ),
//     );
// }
// void main(){
//   runApp(
//     Container(
//       color: Colors.deepPurple,
//       child: Center(
//         child: ConstrainedBox(
//           //отвечает за столбирование текста (т.е. задает максимальную ширину и если текст заходит то переходит на новую строку)
//           constraints: const BoxConstraints.tightFor(width: 300),
//         child: const Text('я в своем сознание настолько преисполнился что уже миллионы миллиардов лет живу на этой планете и помню все что с ней происходило',
//         textDirection: TextDirection.ltr,
//         textAlign: TextAlign.center,
//         style: TextStyle(color: Colors.amber,
//             backgroundColor: Colors.brown),
//       ),
//       ),
//       ),
//     ),
//   );
// }
//
//
// void main(){
//   runApp(
//     Container(
//       color: Colors.deepPurple,
//       padding:const EdgeInsets.only(top: 100),
//       alignment: Alignment.center,
//       child: Column(
//         children: [
//           Container(
//             color: Colors.amber,
//             constraints: const BoxConstraints.tightFor(width: 300),
//             child: const Text('я в своем сознание настолько преисполнился что уже миллионы миллиардов лет живу на этой планете и помню все что с ней происходило',
//               textDirection: TextDirection.ltr,
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.amber,
//                   backgroundColor: Colors.brown),
//             ),
//           ),
//           Container(
//             color: Colors.amber,
//             constraints: const BoxConstraints.tightFor(width: 300),
//             child: const Text('я в своем сознание настолько преисполнился что уже миллионы миллиардов лет живу на этой планете и помню все что с ней происходило',
//               textDirection: TextDirection.ltr,
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.amber,
//                   backgroundColor: Colors.brown),
//             ),
//           ),
//           Container(
//             color: Colors.amber,
//             constraints: const BoxConstraints.tightFor(width: 300),
//             child: const Text('я в своем сознание настолько преисполнился что уже миллионы миллиардов лет живу на этой планете и помню все что с ней происходило',
//               textDirection: TextDirection.ltr,
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.amber,
//                   backgroundColor: Colors.brown),
//             ),
//           ),
//
//         Row(
//
//         ),
//
//         ],
//       ),
//     ),
//   );
//
// }
void main(){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp() :super();


  @override
  Widget build(BuildContext context ){
    return const  MaterialApp(
      home: Scaffold(
        body: Icon(
          Icons.access_alarm_outlined,
          size: 200,
          color: Colors.amber,
        ),
      ),
    );
  }
}