import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/card_analysis_widget.dart';
class ListAnalysisWidget extends StatelessWidget {
  const ListAnalysisWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context,int index){
                return const CardAnalysisWidget();
              },
              childCount: 10
            ),
          ),
        )
      ],
    );
  }
}