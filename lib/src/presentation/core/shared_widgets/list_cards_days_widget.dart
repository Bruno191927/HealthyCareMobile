import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/card_day_widget.dart';
class ListCardsDaysWidget extends StatefulWidget {
  const ListCardsDaysWidget({ Key? key }) : super(key: key);

  @override
  State<ListCardsDaysWidget> createState() => _ListCardsDaysWidgetState();
}

class _ListCardsDaysWidgetState extends State<ListCardsDaysWidget> {
  @override
  Widget build(BuildContext context) {
    List<DateTime> days = _getDays();
    double scrollPosition = (28*100) + 60;
    return CustomScrollView(
      controller: ScrollController(
        initialScrollOffset: scrollPosition
      ),
      scrollDirection: Axis.horizontal,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context,int index){
                return CardDayWidget(dateTime: days[index]);
              },
              childCount: days.length
            )
          )
        )
      ],
    );
    /*return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 20),
      controller: ScrollController(
        initialScrollOffset: scrollPosition
      ),
      scrollDirection: Axis.horizontal,
      itemCount: days.length,
      itemBuilder: (BuildContext context, int index) {
        return CardDayWidget(dateTime: days[index]);
      },
    );*/
  }


  List<DateTime> _getDays() {
    List<DateTime> days = [];
    final day = DateTime.now();

    for(var i = 30; i >= 1; i--){
      final getDay = day.subtract(Duration(days: i));
      days.add(getDay);
    }
    days.add(day);
    for (var i = 1; i <= 30; i++) {
      final getDay = day.add(Duration(days: i));
      days.add(getDay);
    }
    return days;
  }
}