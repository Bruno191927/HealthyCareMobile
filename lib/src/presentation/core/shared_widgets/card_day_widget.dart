import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/core/utils/functions_utils.dart';
import 'package:healthycareapp/src/presentation/logic/provider/appoiment_provider.dart';
import 'package:provider/provider.dart';
class CardDayWidget extends StatelessWidget {
  final DateTime dateTime;
  final DateTime selectedDateTime;
  const CardDayWidget({ Key? key,required this.dateTime, required this.selectedDateTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appoimentProvider = Provider.of<AppoimentProvider>(context);
    return GestureDetector(
      onTap: (){
        appoimentProvider.selectDay(dateTime);
      },
      child: Container(
        width: 100,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: FunctionsUtils.compareDates(appoimentProvider.day, dateTime)?MyColors.primary : MyColors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                offset: Offset(1,1),
                blurRadius: 6
              )
            ]
          ),
          child: Column(
            children: [
              Text(FunctionsUtils.getMonths(monthsInt: dateTime.month),style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              Text(FunctionsUtils.getDayOfTheWeek(dayOfTheWeek: dateTime.weekday),style: const TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
              Text(dateTime.day.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:(selectedDateTime.toString() == dateTime.toString()) ? MyColors.primary:Colors.black ))
            ],
          ),
        ),
      ),
    );
  }
}