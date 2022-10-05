import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/card_category_widget.dart';

class ListCardsCategoryWidget extends StatelessWidget {
  const ListCardsCategoryWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 10),
      scrollDirection: Axis.horizontal,
      children: const [
        CardCategory(img: 'assets/cardiology.png',name: 'Cardiologia'),
        CardCategory(img: 'assets/fertilidad.png',name: 'Fertilidad'),
        CardCategory(img: 'assets/odontologia.png',name: 'Odontologia'),
        CardCategory(img: 'assets/dermatologia.png',name: 'Dermatologia'),
        CardCategory(img: 'assets/traumatologia.png',name: 'Traumatologia'),
        CardCategory(img: 'assets/reumatologia.png',name: 'Reumatologia'),
        CardCategory(img: 'assets/otorrino.png',name: 'Otorrino'),
        CardCategory(img: 'assets/oculista.png',name: 'Oculista'),
        CardCategory(img: 'assets/urologia.png',name: 'Urologia'),
        CardCategory(img: 'assets/gastro.png',name: 'Gastroenterologia'),
      ],
    );
    /*return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 20),
      scrollDirection: Axis.horizontal,
      itemCount: days.length,
      itemBuilder: (BuildContext context, int index) {
        return CardDayWidget(dateTime: days[index]);
      },
    );*/
  }
}