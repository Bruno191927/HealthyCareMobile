import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/views/pages/analysis_home/analysis_home_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/appoiment_home/appoiment_home_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/chat_home/chat_home_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/doctor_days/doctor_days_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/home/home_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/login/login_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/medic_profile/medic_profile_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/record_home/record_home_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/sign_in/sign_in_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  LoginPage.routeName : (_) => const LoginPage(),
  SignInPage.routeName: (_) => const SignInPage(),
  HomePage.routeName: (_) => const HomePage(),
  AppoimentHomePage.routeName: (_) => const AppoimentHomePage(),
  AnalysisHomePage.routeName: (_) => const AnalysisHomePage(),
  RecordHomePage.routeName:(_) => const RecordHomePage(),
  ChatHomePage.routeName:(_) => const ChatHomePage(),
  MedicProfilePage.routeName:(_) => const MedicProfilePage(),
  DoctorDaysPage.routeName:(_) => const DoctorDaysPage()
};