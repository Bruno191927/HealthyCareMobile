import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/card_information.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';
import 'package:healthycareapp/src/presentation/views/pages/analysis_home/analysis_home_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/appoiment_home/appoiment_home_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/chat_home/chat_home_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/record_home/record_home_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'homepage';
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                        Text('Bruno Aguirre',style: MyTextStyles.titleStyleBold,),
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
                  title: 'Mi Historial',
                  imgLink: 'assets/historial.png',
                  function: (){
                    Navigator.pushNamed(context, RecordHomePage.routeName);
                  },
                ),
                CardInformation(
                  title: 'Mis Analisis',
                  imgLink: 'assets/analisis.png',
                  function: (){
                    Navigator.pushNamed(context, AnalysisHomePage.routeName);
                  },
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardInformation(
                  title: 'Separar cita',
                  imgLink: 'assets/calendar.png',
                  function: (){
                    Navigator.pushNamed(context, AppoimentHomePage.routeName);
                  },
                ),
                CardInformation(
                  title: 'Dudas',
                  imgLink: 'assets/chat.png',
                  function: (){
                    Navigator.pushNamed(context, ChatHomePage.routeName);
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