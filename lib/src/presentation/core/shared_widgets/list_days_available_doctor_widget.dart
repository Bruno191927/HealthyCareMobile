import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/grid_hours_available_doctor_widget.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';

class ListDaysAvailableDoctorWidget extends StatefulWidget {
  const ListDaysAvailableDoctorWidget({ Key? key }) : super(key: key);

  @override
  State<ListDaysAvailableDoctorWidget> createState() => _ListDaysAvailableDoctorWidgetState();
}

class _ListDaysAvailableDoctorWidgetState extends State<ListDaysAvailableDoctorWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _cardDaysAvailable(title: 'Lunes'),
        _cardDaysAvailable(title: 'Martes'),
        _cardDaysAvailable(title: 'Miercoles'), 
        _cardDaysAvailable(title: 'Jueves'), 
        _cardDaysAvailable(title: 'Viernes'), 
        _cardDaysAvailable(title: 'Sabado'),
        _cardDaysAvailable(title: 'Domingo')
      ],
    );
  }

  Widget _cardDaysAvailable({required String title}){
    return Container(
      margin: const EdgeInsets.only(bottom: 10,left: 20,right: 20),
      padding: const EdgeInsets.all(20),
      height: 260,
      decoration: BoxDecoration(
        color: MyColors.white,
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
          Row(
            children: [
              Text(title,style: MyTextStyles.subTitleStylePrimaryBold),
              Checkbox(
                activeColor: MyColors.primary,
                value: true, 
                onChanged: (value){
                  
                }
              )
            ],
          ),
          const SizedBox(
            height: 160,
            child: GridHoursAvailableDoctorWidget(),
          )
        ],
      ),
    );
  }
}