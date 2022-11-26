import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
class InputLinearWidget extends StatelessWidget {
  final String title;
  final String placeholder;
  final TextEditingController? controller;
  const InputLinearWidget({ Key? key,required this.title,required this.placeholder,this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          TextFormField(
            cursorColor: MyColors.primary,
            decoration: InputDecoration(
              hintText: placeholder,
              labelText: title,
            ),
            controller: controller,
          )
        ],
      ),
    );
  }
}