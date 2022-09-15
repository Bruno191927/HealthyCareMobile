import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/views/pages/appoiment_home/appoiment_home.dart';
import 'package:healthycareapp/src/presentation/views/pages/home/home_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/login/login_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/sign_in/sign_in_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  LoginPage.routeName : (_) => const LoginPage(),
  SignInPage.routeName: (_) => const SignInPage(),
  HomePage.routeName: (_) => const HomePage(),
  AppoimentHome.routeName: (_) => const AppoimentHome()
};