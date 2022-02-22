import 'package:flutter/material.dart';
import 'package:flutter_app/screen/noble_gases/widgets/noble_gases_model.dart';
/*---------------------------------------------------------

ЗАДАНИЕ 2. Создание ленты виджетов.

2.1. Создайте в этом файле stless виджет NobleGasRibbon.

2.2. Перенесите список List<List<String>> noble_gases
     внутрь метода Widget build(BuildContext context).

        List<List<String>> noble_gases = [
          ["Atomic number", "Symbol", "Name", "Standard atomic weight"],
          ['2', 'He', 'Гелий', '4.002602(2)'],
          ['10', 'Ne', 'Неон', '20.1797(6)'],
          ['18', 'Ar', 'Аргон', '39.948(1)'],
          ['36', 'Kr', 'Криптон', '83.80(1)'],
          ['54', 'Xe', 'Ксенон', '131.29(2)'],
          ['86', 'Rn', 'Радон', '(222)'],
          ['118', 'Oq', 'Оганесон', '(294)']
        ];


2.3.1. Внутри метода Widget build(BuildContext context)
       создайте пустой список с типом данных NobleGasItem.
       Назовите список ngList.
2.3.2. Используя List<List<String>> noble_gases и
       цикл for, заполните ngList данными.

2.4. Внутри виджета NobleGasRibbon, создайте метод
     Widget elementDesign(NobleGasItem gas).
     Метод формирует ячейку ленты. Дизайн ячейки в notion.

2.5.1. Внутри метода Widget build(BuildContext context)
       создайте пустой список с типом данных Widget.
       Назовите список ribbon.
2.5.2. Используя список ngList, метод elementDesign() и
       цикл for(var gas_item in ngList),
       заполните ribbon данными.

2.6. По умолчанию, метод Widget build(BuildContext context)
     возвращает контейнер: return Container().
     Замените контейнер на колонку (Column()).
     В агрументе колонки children укажите ribbon.

---------------------------------------------------------*/

class NobleGasRibbon extends StatelessWidget {
  const NobleGasRibbon({Key? key}) : super(key: key);

  Widget elementDesign(NobleGasItem gas){
    return Row(children: [
      Text(gas.atN),
      Text(gas.symbol),
      Column(children: [
        Text(gas.name),
        Text(gas.weight),
      ],
      )
    ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<List<String>> noble_gases = [
      ["Atomic number", "Symbol", "Name", "Standard atomic weight"],
      ['2', 'He', 'Гелий', '4.002602(2)'],
      ['10', 'Ne', 'Неон', '20.1797(6)'],
      ['18', 'Ar', 'Аргон', '39.948(1)'],
      ['36', 'Kr', 'Криптон', '83.80(1)'],
      ['54', 'Xe', 'Ксенон', '131.29(2)'],
      ['86', 'Rn', 'Радон', '(222)'],
      ['118', 'Oq', 'Оганесон', '(294)']
    ];

    List<NobleGasItem> ngList=[];


    for(var i=0;i<noble_gases.length;i++){
      ngList.add(NobleGasItem(atN: noble_gases[i][0], symbol: noble_gases[i][1], name: noble_gases[i][2], weight: noble_gases[i][3]));
    };
    List<Widget> ribbon=[];
    for(var i in ngList){
      ribbon.add(elementDesign(i));
    }
    return Column(children: ribbon,);
  }
}
