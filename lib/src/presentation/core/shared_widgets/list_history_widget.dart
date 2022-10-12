import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/card_history_widget.dart';
class ListHistoryWidget extends StatefulWidget {
  const ListHistoryWidget({ Key? key }) : super(key: key);

  @override
  State<ListHistoryWidget> createState() => _ListHistoryWidgetState();
}

class _ListHistoryWidgetState extends State<ListHistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context,int index){
                return const CardHistoryWidget();
              },
              childCount: 10
            ),
          ),
        )
      ],
    );
  }
}