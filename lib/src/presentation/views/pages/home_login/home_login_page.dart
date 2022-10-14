import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/button_fill_widget.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';
import 'package:healthycareapp/src/presentation/views/pages/login/login_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/sign_in/sign_in_page.dart';

class HomeLoginPage extends StatelessWidget {
  const HomeLoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.health_and_safety_sharp,color: MyColors.primary,size: 60),
              Text('HEALTHTY APP',style: MyTextStyles.logoStyle,),
            ],
          ),
          const SizedBox(height: 50),
          Text('Nunca fue tan facil agendar una cita!!',style: MyTextStyles.titleStylePrimaryBold),
          Text('Separa tu cita con el mejor personal medico,\ndeja de hacer largas colas.',style: MyTextStyles.normalStyle,textAlign: TextAlign.center),
          const SizedBox(height: 20),
          SizedBox(
            child: Center(
              child: SvgPicture.asset(
                'assets/home_login.svg',
                height: 200,
                width: 200,
              ),
            ),
          ),
          const SizedBox(height: 80),
          ButtonFillWidget(
            title: 'Ingresa',
            function: (){
              Navigator.pushNamed(context, LoginPage.routeName);
            },
          ),
          const SizedBox(height: 20),
          ButtonFillWidget(
            title: 'Registrate',
            function: (){
              Navigator.pushNamed(context, SignInPage.routeName);
            },
          ),
          const SizedBox(height: 20),
          ButtonFillWidget(
            title: 'Soy Doctor',
            function: (){
              Navigator.pushNamed(context, SignInPage.routeName);
            },
          )
        ],
      )
    );
  }
}