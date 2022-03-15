/*-----------------------------------------------------

1. Создайте в файле stless виджет ScrollText.

2. Внутри метода Widget build(BuildContext context)
     создайте пустой список widgets с типом данных Widget.

3. Заполните список widgets данными, используя цикл
     for (int i = 0; i < 100; i += 1){}.
     Оформление см. на скриншоте в notion.
     Вам понадобятся виджеты: контейнер, текст.
     Контейнер высотой 30, с отступом по левому краю на 17.
     Текст жирный, размером 20.

4. По умолчанию, метод Widget build(BuildContext context)
     возвращает контейнер: return Container().
     Замените контейнер на Scaffold().
     Внутри Scaffold:
     appBar: AppBar(title: ). В title поместите текст 'List of lines'.
     body: Внутри body поместите Column().

5.  Внутри Column() надо разместить SingleChildScrollView и жёлтый контейнер.
     Цвет контейнера yellow[300], высота 70.
     Внутри SingleChildScrollView:
     physics: const BouncingScrollPhysics().
     child: Column, внутри которой список widgets.

6. В файле main.dart найдите виджет MaterialApp. В параметре
     home укажите виджет MedalStandings.

----------------------------------------------------------*/
import 'package:flutter/material.dart';

class Scrolltext extends StatelessWidget {
  const Scrolltext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i += 1) {
      widgets.add(Container(
        height: 30,
        padding: EdgeInsets.only(left: 17),
        alignment: Alignment.topLeft,
        child: Text(
          'Line under number $i',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ));
    }
    return Scaffold(
      appBar: AppBar(title: Text('List of lines')),
      body: Column(
        children: [
          Expanded(
            // height: MediaQuery.of(context).size.height-70,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: widgets,
              ),
            ),
          ),
          Container(
            color: Colors.yellow[300],
            height: 70,
          )
        ],
      ),
    );
  }
}
