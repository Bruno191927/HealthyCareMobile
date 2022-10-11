import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/button_fill_widget.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/grid_hours_widget.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/list_doctor_days_widget.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';

class MedicProfilePage extends StatelessWidget {
  static const routeName = "MedicProfilePage";
  const MedicProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: MyColors.primary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 35),
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColors.white
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Dr. Steven Strange',style: TextStyle(fontSize: 26,color: Colors.white),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Medico Cirujano',style: TextStyle(fontSize: 18,color: Colors.white70))
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Flexible(
                          child: Text('Dr. Steven Strange Dr. Steven Strange Dr. Steven Strange Dr. Steven Strange Dr. Steven Strange',style: TextStyle(fontSize: 14,color: Colors.black38),textAlign: TextAlign.center,)
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 500,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                width: size.width,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text('Selecciona una fecha',style: MyTextStyles.titleStyleBold,)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 120,
                      child: ListDoctorDaysWidget(),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text('Selecciona una hora',style: MyTextStyles.titleStyleBold,)
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      height: 200,
                      child: const GridHoursWidget(),
                    ),
                    const ButtonFillWidget(title: 'Separar')
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

/*
Column(
          
          children: [
            
            
          ],
        ),

 */