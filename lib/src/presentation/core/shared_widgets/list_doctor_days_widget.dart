import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/card_day_widget.dart';
import 'package:healthycareapp/src/presentation/logic/provider/appoiment_provider.dart';
import 'package:provider/provider.dart';

class ListDoctorDaysWidget extends StatelessWidget {
  const ListDoctorDaysWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appoimentProvider = Provider.of<AppoimentProvider>(context);
    List<DateTime> days = _getDays();
    return CustomScrollView(
      scrollDirection: Axis.horizontal,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context,int index){
                return CardDayWidget(dateTime: days[index],selectedDateTime: appoimentProvider.day);
              },
              childCount: days.length
            )
          )
        )
      ],
    );
  }

  List<DateTime> _getDays() {
    List<DateTime> days = [];
    final day = DateTime.now();
    days.add(day);
    for (var i = 1; i <= 15; i++) {
      final getDay = day.add(Duration(days: i));
      days.add(getDay);
    }
    return days;
  }
}