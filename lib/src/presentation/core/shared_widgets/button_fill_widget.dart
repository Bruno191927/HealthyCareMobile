import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';

class ButtonFillWidget extends StatelessWidget {
  final String title;
  final VoidCallback? function;
  const ButtonFillWidget({ Key? key, required this.title,this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(300, 50)),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          )
        )
      ),
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColors.primary
        ),
        child: Center(child: Text(title,style: MyTextStyles.titleStyleWhite)),
      ),
      onPressed: function
    );
  }
}