import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/card_category_widget.dart';
import 'package:healthycareapp/src/presentation/logic/provider/appoiment_provider.dart';
import 'package:provider/provider.dart';

class ListCardsCategoryWidget extends StatelessWidget {
  const ListCardsCategoryWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appoimentProvider = Provider.of<AppoimentProvider>(context);
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 10),
      scrollDirection: Axis.horizontal,
      children: [
        CardCategory(img: 'assets/cardiology.png',name: 'Cardiologia',selectedName: appoimentProvider.category),
        CardCategory(img: 'assets/fertilidad.png',name: 'Fertilidad',selectedName: appoimentProvider.category),
        CardCategory(img: 'assets/odontologia.png',name: 'Odontologia',selectedName: appoimentProvider.category),
        CardCategory(img: 'assets/dermatologia.png',name: 'Dermatologia',selectedName: appoimentProvider.category),
        CardCategory(img: 'assets/traumatologia.png',name: 'Traumatologia',selectedName: appoimentProvider.category),
        CardCategory(img: 'assets/reumatologia.png',name: 'Reumatologia',selectedName: appoimentProvider.category),
        CardCategory(img: 'assets/otorrino.png',name: 'Otorrino',selectedName: appoimentProvider.category),
        CardCategory(img: 'assets/oculista.png',name: 'Oculista',selectedName: appoimentProvider.category),
        CardCategory(img: 'assets/urologia.png',name: 'Urologia',selectedName: appoimentProvider.category),
        CardCategory(img: 'assets/gastro.png',name: 'Gastroenterologia',selectedName: appoimentProvider.category),
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