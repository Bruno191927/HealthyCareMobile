import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthycareapp/src/data/datasources/api/auth_api.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/button_fill_widget.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/button_link_widget.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/input_linear_widget.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';
import 'package:healthycareapp/src/presentation/views/pages/home/home_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/login/login_page.dart';

class SignInPage extends StatelessWidget {
  static const routeName = 'signinpage';
  const SignInPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController documentController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Text('Registrate!!',style: MyTextStyles.titleStylePrimaryBold),
            const SizedBox(height: 20),
            SizedBox(
              child: Center(
                child: SvgPicture.asset(
                  'assets/sign_in.svg',
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            InputLinearWidget(title: 'Email',placeholder: 'Ingrese un email',controller: emailController,),
            InputLinearWidget(title: 'Nombre',placeholder: 'Ingrese su nombre',controller: nameController,),
            InputLinearWidget(title: 'Numero de Documento',placeholder: 'Ingrese su numero de documento',controller: documentController,),
            InputLinearWidget(title: 'Contraseña',placeholder: 'Ingrese una contraseña',controller: passwordController,),
            const SizedBox(height: 50),
            ButtonFillWidget(
              title: 'Registrate',
              function: () async{
                final response = await AuthApi.instance.signIn(
                  email: emailController.text, 
                  password: passwordController.text, 
                  firstName: nameController.text, 
                  lastName: "", 
                  cellPhone: "", 
                  documentNumber: documentController.text
                );
                
                if(response){
                  Navigator.pushNamed(context, HomePage.routeName);
                }
              }
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('¿Ya tienes cuenta?',style: MyTextStyles.normalStyle),
                const SizedBox(width: 5,),
                ButtonLinkWidget(title: 'Ir a login',function: (){
                  Navigator.pushNamed(context, LoginPage.routeName);
                },)
              ],
            )
          ],
        ),
      ),
    );
  }
}