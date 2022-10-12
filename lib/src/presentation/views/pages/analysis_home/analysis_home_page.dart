import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/list_analysis_widget.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';

class AnalysisHomePage extends StatelessWidget {
  static const routeName = "AnalysisHomePage";
  const AnalysisHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
            children: [
              Text('Mis Analisis',style: MyTextStyles.titleStylePrimaryBold),
            ],
          ),
          ),
          const SizedBox(height: 10),
          const SizedBox(
            height: 600,
            child: ListAnalysisWidget(),
          )
        ],
      ),
    );
  }
}