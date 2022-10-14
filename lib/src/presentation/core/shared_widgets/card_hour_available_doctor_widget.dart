import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';

class CardHourAvailableDoctorWidget extends StatefulWidget {
  const CardHourAvailableDoctorWidget({ Key? key }) : super(key: key);

  @override
  State<CardHourAvailableDoctorWidget> createState() => _CardHourAvailableDoctorWidgetState();
}

class _CardHourAvailableDoctorWidgetState extends State<CardHourAvailableDoctorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(1,1),
              blurRadius: 6
            )
          ],
      ),
      child: const Center(
        child: Text('08:00 am')
      )
    );
  }
}