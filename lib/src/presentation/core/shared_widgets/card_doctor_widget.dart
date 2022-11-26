import 'package:flutter/material.dart';
import 'package:healthycareapp/src/data/models/doctor_model.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/logic/provider/appoiment_provider.dart';
import 'package:healthycareapp/src/presentation/views/pages/medic_profile/medic_profile_page.dart';
import 'package:provider/provider.dart';

class CardDoctorWidget extends StatelessWidget {
  final DoctorModel model;
  const CardDoctorWidget({ Key? key,required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appoimentProvider = Provider.of<AppoimentProvider>(context);
    return GestureDetector(
      onTap: (){
        appoimentProvider.changeDoctorSelected(model);
        Navigator.pushNamed(context, MedicProfilePage.routeName);
      },
      child: Container(
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
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
          child: Column(
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColors.primary
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text(model.usuario.firstName,style: TextStyle(fontSize: 16),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text(model.categoria,style: TextStyle(color: Color(0xffa1a1a1)),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*

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
          ),
          ButtonLinkWidget(
            title: 'Ver Perfil',
            function: (){
              Navigator.pushNamed(context, MedicProfilePage.routeName);
            },
          )
        ],
      ),

 */