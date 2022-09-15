import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/list_cards_days_widget.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';
import 'package:healthycareapp/src/presentation/views/widgets/headers.dart';

class AppoimentHome extends StatefulWidget {
  static const routeName = 'appoimentHome';
  const AppoimentHome({ Key? key }) : super(key: key);

  @override
  State<AppoimentHome> createState() => _AppoimentHomeState();
}

class _AppoimentHomeState extends State<AppoimentHome> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          CurveHeader(),
          Container(
            height: double.infinity,
            width: double.infinity,
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text('Ver Horarios',style: MyTextStyles.titleStyleWhiteBold),
                  SizedBox(height: 20),
                  Container(
                    height: 130,
                    child: ListCardsDaysWidget(),
                  ),
                  SizedBox(height: 100),
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          Image(
                            width: 200,
                            height: 200,
                            image: AssetImage('assets/calendar.png'),
                          ),
                          Text('No tienes citas Hoy',style: MyTextStyles.titleStyleBold,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.primary,
        child: Icon(Icons.add),
        onPressed: (){

        },
      ),
    );
  }
}