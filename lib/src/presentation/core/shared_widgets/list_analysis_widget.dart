import 'package:flutter/material.dart';
import 'package:healthycareapp/src/domain/entity/analisis.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/card_analysis_widget.dart';
class ListAnalysisWidget extends StatelessWidget {
  final List<Analisis> models;
  const ListAnalysisWidget({ Key? key, required this.models}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context,int index){
                return CardAnalysisWidget(model: models[index],);
              },
              childCount: models.length
            ),
          ),
        )
      ],
    );
  }
}