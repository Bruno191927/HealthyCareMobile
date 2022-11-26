import 'package:flutter/material.dart';
import 'package:healthycareapp/src/data/models/doctor_model.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/card_doctor_widget.dart';
class ListGridCardsDoctorWidget extends StatelessWidget {
  final List<DoctorModel> models;
  const ListGridCardsDoctorWidget({ Key? key,required this.models}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 210,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index){
                return CardDoctorWidget(model: models[index],);
              },
              childCount: models.length
            ),
          )
        )
      ],
    );
  }
}