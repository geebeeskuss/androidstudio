
import 'dart:html';

import 'package:flutter/material.dart';

class Country{
  String name;
  String gold;
  String silver;
  String bronze;
  String total;

  Country({required this.name, required this.gold, required this.silver, required this.bronze, required this.total});
}

class MedalStandings extends StatelessWidget {
  const MedalStandings({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    List<String> olympics2022 = [
      'Страна', 'Золото', 'Серебро', 'Бронза', 'Итого',
      'Норвегия', '16', '8', '13', '37',
      'Германия', '12', '10', '5', '27',
      'Китай', '9', '4', '2', '15',
      'США', '8', '10', '7', '25',
      'Швеция', '8', '5', '5', '18',
      'Нидерланды', '8', '5', '4', '17',
      'Австрия', '7', '7', '4', '18',
      'Швейцария', '7', '2', '5', '14',
      'OKP', '6', '12', '14', '32',
    ];
    List<Country> countryList=[];

    for(var i=5;i<olympics2022.length;i+=5){
      Country object = Country(
          name: olympics2022[i],
          gold: olympics2022[i+1],
          silver: olympics2022[i+2],
          bronze: olympics2022[i+3],
          total: olympics2022[i+4]);
      countryList.add(object);
    }

    List<Widget> widgetList=[];
    for(var country in countryList){
      Widget design=Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(country.name),
          ),
          SizedBox(
              width: 100,
              child: Text(country.gold)
          ),
          SizedBox(
              width: 100,
              child:
              Text(country.silver)
          ),
          SizedBox(
              width: 100,
              child:
              Text(country.bronze)
          ),
          Text(country.total),
        ],
      );
      widgetList.add(design);
      widgetList.add(Divider(thickness: 1,));
    }
    return Scaffold(
      appBar: AppBar(title: Text('Медальный зачёт'), backgroundColor: Colors.purple,),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: widgetList,),
      ),
    );
  }
}
