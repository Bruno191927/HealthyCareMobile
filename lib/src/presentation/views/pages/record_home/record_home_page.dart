import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';
class RecordHomePage extends StatelessWidget {
  static const routeName = "RecordHomePage";
  const RecordHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Row(
              children: [
                Text('Mi Historial',style: MyTextStyles.titleStylePrimaryBold),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 600,
              child: Column(
                children: [
                  Container(
                    height: 130,
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
                    child: Column(
                      children: [
                        Text('Titulo')
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}