import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/list_cards_days_widget.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';
import 'package:healthycareapp/src/presentation/views/pages/find_appoiment/find_appoiment_page.dart';
import 'package:healthycareapp/src/presentation/views/widgets/headers.dart';

class AppoimentHomePage extends StatefulWidget {
  static const routeName = 'AppoimentHomePage';
  const AppoimentHomePage({ Key? key }) : super(key: key);
  @override
  State<AppoimentHomePage> createState() => _AppoimentHomePageState();
}

class _AppoimentHomePageState extends State<AppoimentHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          const CurveHeader(),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Text('Ver Horarios',style: MyTextStyles.titleStyleWhiteBold),
                  const SizedBox(height: 20),
                  const SizedBox(
                    height: 130,
                    child: ListCardsDaysWidget(),
                  ),
                  const SizedBox(height: 100),
                  SizedBox(
                    child: Center(
                      child: Column(
                        children: [
                          const Image(
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
        child: const Icon(Icons.add),
        onPressed: (){
          showDialog(
            context: context,
            builder: (context) => const FindAppoimentPage()
          );
        },
      ),
    );
  }
}