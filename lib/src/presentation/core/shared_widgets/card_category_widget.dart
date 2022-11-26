import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/logic/provider/appoiment_provider.dart';
import 'package:provider/provider.dart';
class CardCategory extends StatefulWidget {
  final String img;
  final String name;
  final String selectedName;
   final VoidCallback? function;
  const CardCategory({ Key? key,required this.img,required this.name,required this.selectedName,this.function}) : super(key: key);

  @override
  State<CardCategory> createState() => _CardCategoryState();
}

class _CardCategoryState extends State<CardCategory> {
  @override
  Widget build(BuildContext context) {
    final appoimentProvider = Provider.of<AppoimentProvider>(context);
    return GestureDetector(
      onTap: (){
        print('Hello');
        appoimentProvider.selectCategory(widget.name);
      },
      child: Container(
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
            Image.asset(widget.img,width: 80,height: 80),
            (widget.name != widget.selectedName)?Text(widget.name):Text(widget.name,style: TextStyle(color: MyColors.primary))
          ],
        )
      ),
    );
  }
}