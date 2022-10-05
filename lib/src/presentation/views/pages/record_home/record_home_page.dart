import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';
class RecordHomePage extends StatelessWidget {
  static const routeName = "RecordHomePage";
  const RecordHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text('Mi Historial',style: MyTextStyles.titleStylePrimaryBold)
          ],
        ),
      ),
    );
  }
}