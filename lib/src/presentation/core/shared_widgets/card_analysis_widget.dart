import 'package:flutter/material.dart';
import 'package:healthycareapp/src/domain/entity/analisis.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';

class CardAnalysisWidget extends StatelessWidget {
  final Analisis model;
  const CardAnalysisWidget({ Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
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
          Row(
            children: [
              Text(model.descripcion,style: MyTextStyles.normalStylePrimaryBold)
            ],
          ),
          Row(
            children: [
              Text(model.cita.fechaCompleta,style: MyTextStyles.normalStyleGray)
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Text(model.descripcion)
              )
            ],
          ),
        ],
      ),
    );
  }
}