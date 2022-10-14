import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/card_hour_available_doctor_widget.dart';
class GridHoursAvailableDoctorWidget extends StatefulWidget {
  const GridHoursAvailableDoctorWidget({ Key? key }) : super(key: key);

  @override
  State<GridHoursAvailableDoctorWidget> createState() => _GridHoursAvailableDoctorWidgetState();
}

class _GridHoursAvailableDoctorWidgetState extends State<GridHoursAvailableDoctorWidget> {
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
                return const CardHourAvailableDoctorWidget();
              },
              childCount: 12
            ),
          )
        )
      ],
    );
  }
}