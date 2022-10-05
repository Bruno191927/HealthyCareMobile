import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
class CardCategory extends StatelessWidget {
  final String img;
  final String name;
  const CardCategory({ Key? key,required this.img,required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
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
      width: 120,
      child: Column(
        children: [
          Image.asset(img,width: 80,height: 80),
          Text(name)
        ],
      )
    );
  }
}