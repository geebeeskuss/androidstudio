import 'package:flutter/material.dart';

class myContainer extends StatelessWidget {
  const myContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Основа SafeArea.
    // Внутри SafeArea находится Scaffold.
    // Scaffold body находится Container...
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          color: Colors.green,
          width: 300,
          height: 500,

          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 100, top: 200),
          constraints: const BoxConstraints(maxWidth: 200),
          child: const Text('Виджет ConstrainedBox задает параметры прямоугольной области (ширину и высоту), в которой размещается вложенный виджет. Для создания объекта ConstrainedBox применяется следующий конструктор:')
        ),
      ),
    );

  }
}
