import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';
class CardInformation extends StatelessWidget {
  final String imgLink;
  final String title;
  final VoidCallback? function;
  const CardInformation({ Key? key,required this.imgLink,required this.title,this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: 160,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(1, 1),
              blurRadius: 6
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: Image(image: AssetImage(imgLink)),
            ),
            const SizedBox(height: 10),
            Text(title,style: MyTextStyles.titleStyleBold,)
          ],
        ),
      ),
    );
  }
}