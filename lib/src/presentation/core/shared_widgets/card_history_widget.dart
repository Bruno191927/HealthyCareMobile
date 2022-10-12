import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';

class CardHistoryWidget extends StatelessWidget {
  const CardHistoryWidget({ Key? key }) : super(key: key);

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
              Text('Titulo',style: MyTextStyles.normalStylePrimaryBold)
            ],
          ),
          Row(
            children: [
              Text('08 de Agosto del 2022',style: MyTextStyles.normalStyleGray)
            ],
          ),
          Row(
            children: const [
              Flexible(
                child: Text('hello hello hello hello hello hello hello helloooo hello hello hello hello hello hello hello hello')
              )
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                child: const Icon(Icons.star_rate,color: Colors.yellow,),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                child: const Icon(Icons.visibility,color: Colors.blueAccent,),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                child: Icon(Icons.download,color: MyColors.primary),
              )
            ],
          )
        ],
      ),
    );
  }
}