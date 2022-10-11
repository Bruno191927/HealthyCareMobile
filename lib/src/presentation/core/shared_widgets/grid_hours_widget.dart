import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/card_hour_widget.dart';

class GridHoursWidget extends StatefulWidget {
  const GridHoursWidget({ Key? key }) : super(key: key);

  @override
  State<GridHoursWidget> createState() => _GridHoursWidgetState();
}

class _GridHoursWidgetState extends State<GridHoursWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisExtent: 40,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index){
                return const CardHourWidget();
              },
              childCount: 20
            ),
          )
        )
      ],
    );
  }
}