import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/card_information.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';
import 'package:healthycareapp/src/presentation/views/pages/doctor_days/doctor_days_page.dart';

class DoctorHomePage extends StatefulWidget {
  const DoctorHomePage({ Key? key }) : super(key: key);

  @override
  State<DoctorHomePage> createState() => _DoctorHomePageState();
}

class _DoctorHomePageState extends State<DoctorHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Buen dia',style: MyTextStyles.subTitleGrayWhite),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Dr. Bruno Aguirre',style: MyTextStyles.titleStyleBold,),
                      ],
                    )
                  ],
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.primary
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: MyColors.primary,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/calendar.png')
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20,),
                      Text('Tu proxima cita: ',style: MyTextStyles.titleStyleWhiteBold),
                      Text('19 de Noviembre',style: MyTextStyles.titleStyleBold)
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text('¿Que es lo que quieres hacer?',style: MyTextStyles.titleStyleBold)
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardInformation(
                  title: 'Historial',
                  imgLink: 'assets/historial.png',
                  function: (){
                    
                  },
                ),
                CardInformation(
                  title: 'Analisis',
                  imgLink: 'assets/analisis.png',
                  function: (){
                    
                  },
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardInformation(
                  title: 'Mis Horarios',
                  imgLink: 'assets/calendar.png',
                  function: (){
                    Navigator.pushNamed(context, DoctorDaysPage.routeName);
                  },
                ),
                CardInformation(
                  title: 'Mis Citas',
                  imgLink: 'assets/calendar.png',
                  function: (){
                    
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}