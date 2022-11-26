
import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:healthycareapp/src/data/datasources/local/auth.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/views/pages/home/home_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/home_login/home_login_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/login/login_page.dart';

class SplashLoginPage extends StatefulWidget {
  const SplashLoginPage({ Key? key }) : super(key: key);

  @override
  State<SplashLoginPage> createState() => _SplashLoginPageState();
}

class _SplashLoginPageState extends State<SplashLoginPage> with AfterLayoutMixin{

  @override
  void afterFirstLayout(BuildContext context) {
    _check();
  }

  _check() async {
    final String? token = await Auth.instance.accessToken;
    if(token != null){
      Navigator.pushReplacementNamed(context, HomePage.routeName);
    }
    else{
      Navigator.pushReplacementNamed(context, HomeLoginPage.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(MyColors.primary),
      ),
      ),
    );
  }
}