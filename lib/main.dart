import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/views/pages/home_login/home_login_page.dart';

import 'src/presentation/core/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const HomeLoginPage(),
      routes: appRoutes,
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme, // If this is not set, then ThemeData.light().textTheme is used.
        ),
        inputDecorationTheme: InputDecorationTheme(
            floatingLabelStyle:MaterialStateTextStyle.resolveWith((Set<MaterialState> states){
              final Color color = states.contains(MaterialState.focused)?MyColors.primary:MyColors.gray;
              return TextStyle(color:color);
            }),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                style: BorderStyle.solid,
                color: MyColors.primary
              )
            )
          ),
      )
    );
  }
}