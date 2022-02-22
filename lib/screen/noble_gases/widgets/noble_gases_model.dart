/*---------------------------------------------------

ЗАДАНИЕ 1. Построение класса-модели.

1.1. На основе данных таблицы noble_gases,
     создайте в этом файле класс NobleGasItem,
     описывающий каждый благородный газ.

      Atomic	Symbol	Name		  Standard
      number						        atomic weight
      2	  	  He	  	Гелий		  4.002602(2)
      10	  	Ne		  Неон		  20.1797(6)
      18		  Ar		  Аргон		  39.948(1)
      36		  Kr		  Криптон		83.80(1)
      54		  Xe		  Ксенон		131.29(2)
      86		  Rn		  Радон		  (222)
      118		  Oq		  Оганесон	(294)

1.2. Внутри класса определите поля и конструктор,
     у которого все аргументы именованные и required
     Перейдите к файлу noble_gases_ribbon

---------------------------------------------------*/

class NobleGasItem{
  String atN;
  String symbol;
  String name;
  String weight;

  NobleGasItem({required this.atN,required this.symbol,required this.name,required this.weight});
}