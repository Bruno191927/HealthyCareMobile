import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';
class ButtonLinkWidget extends StatelessWidget {
  final String title;
  final VoidCallback? function;
  const ButtonLinkWidget({ Key? key, required this.title, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(title,style: MyTextStyles.normalStylePrimary,),
      onPressed: function
    );
  }
}