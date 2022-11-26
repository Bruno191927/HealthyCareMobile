import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthycareapp/src/data/datasources/api/auth_api.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/button_fill_widget.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/button_link_widget.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/input_linear_widget.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';
import 'package:healthycareapp/src/presentation/views/pages/home/home_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/sign_in/sign_in_page.dart';

class LoginPage extends StatefulWidget {
  static const routeName = "LoginPage";
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Text('Ingrese a su cuenta',style: MyTextStyles.titleStylePrimaryBold),
            const SizedBox(height: 20),
            SizedBox(
              child: Center(
                child: SvgPicture.asset(
                  'assets/login.svg',
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            const SizedBox(height: 20),
            InputLinearWidget(title: 'Email',placeholder: 'Ingrese su email',controller: emailController),
            const SizedBox(height: 20),
            InputLinearWidget(title: 'Contraseña',placeholder: 'Ingrese su contraseña',controller: passwordController,),
            const SizedBox(height: 50),
            ButtonFillWidget(
              title: 'Ingresa',
              function: () async{
                final response = await AuthApi.instance.login(email: emailController.text, password: passwordController.text);
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
                Text('¿No tienes Cuenta?',style: MyTextStyles.normalStyle),
                const SizedBox(width: 5,),
                ButtonLinkWidget(title: 'Ir a registrarme',function: (){
                  Navigator.pushNamed(context, SignInPage.routeName);
                },)
              ],
            )
          ],
        ),
      )
    );
  }
}