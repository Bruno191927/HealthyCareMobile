import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';

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
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Buen dia',style: MyTextStyles.normalStyleGray,),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Bruno Aguirre',style: MyTextStyles.subTitleStyleBold,),
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
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: MyColors.secondary,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    child: Image.asset('assets/calendar.png')
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}