import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/list_history_widget.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';
class RecordHomePage extends StatelessWidget {
  static const routeName = "RecordHomePage";
  const RecordHomePage({ Key? key }) : super(key: key);

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
              Text('Mi Historial',style: MyTextStyles.titleStylePrimaryBold),
            ],
          ),
          ),
          const SizedBox(height: 10),
          const SizedBox(
            height: 600,
            child: ListHistoryWidget(),
          )
        ],
      ),
    );
  }
}