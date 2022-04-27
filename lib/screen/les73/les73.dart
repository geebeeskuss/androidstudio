import 'package:flutter/material.dart';
// class Light extends StatelessWidget {
//   const Light({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Column(
//           children: [
//             Icon(
//               Icons.lightbulb,
//             ),
//             // IconButton(
//             //     onPressed: () { Navigator.pushNamed(context, '/callinfo');},
//             //     icon: const Icon(
//             //         Icons.lightbulb,
//             //
//             //       color: Colors.lightBlue,
//             //     )),
//
//             OutlineButton(
//               onPressed: (){
//                 setState((){
//                   color.
//               });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class Light extends StatefulWidget {
  const Light({Key? key}) : super(key: key);

  @override
  State<Light> createState() => _LightState();
}

class _LightState extends State<Light> {
  int flag = -1;
  Color color=Colors.black12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 300,
          child: Column(
            children: [
              Icon(Icons.lightbulb, size: 150, color: color,),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    flag *=-1;
                    if (flag>0) {
                      color = Colors.pinkAccent;}
                    else{
                      color = Colors.grey;}
                  });
                }, child: null
              )
            ],
          ),
        ),
      ),
    );
  }
}
