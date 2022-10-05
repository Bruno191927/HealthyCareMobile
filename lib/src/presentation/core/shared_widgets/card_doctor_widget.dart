import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';

class CardDoctorWidget extends StatelessWidget {
  const CardDoctorWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(1,1),
            blurRadius: 6
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: MyColors.primary,
              borderRadius: BorderRadius.circular(50)
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Dr. Chung Lee')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.star,color: Colors.yellow,),
              Icon(Icons.star,color: Colors.yellow,),
              Icon(Icons.star,color: Colors.yellow,),
              Icon(Icons.star,color: Colors.yellow,),
              Icon(Icons.star,color: Colors.yellow,),
            ],
          )
        ],
      ),
    );
  }
}