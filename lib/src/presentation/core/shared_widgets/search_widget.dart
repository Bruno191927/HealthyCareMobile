import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
              color: Colors.black38,
              offset: Offset(1,1),
              blurRadius: 6
            )
        ]
      ),
      child: TextField(
        cursorColor: MyColors.primary,
        decoration: const InputDecoration(
          hintText: 'Ingrese un nombre de doctor',
          focusedBorder:InputBorder.none,
          border:InputBorder.none,
        ),
      ),
    );
  }
}