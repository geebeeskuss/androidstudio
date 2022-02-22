import 'package:flutter/material.dart';

class myConstrainedBox extends StatelessWidget {
  const myConstrainedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Основа SafeArea.
    // Внутри SafeArea находится Scaffold.
    // Scaffold body находится ConstrainedBox...
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 150),
          child: const Text('Виджет ConstrainedBox задает параметры прямоугольной области (ширину и высоту), в которой размещается вложенный виджет. Для создания объекта ConstrainedBox применяется следующий конструктор:')
        ),
      ),
    );

  }
}
