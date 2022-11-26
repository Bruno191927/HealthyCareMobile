import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
import 'package:healthycareapp/src/presentation/logic/provider/appoiment_provider.dart';
import 'package:healthycareapp/src/presentation/views/pages/home_login/home_login_page.dart';
import 'package:healthycareapp/src/presentation/views/pages/splash_login/splash_login_page.dart';
import 'package:provider/provider.dart';

import 'src/presentation/core/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(lazy: false,create: (_) => AppoimentProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const SplashLoginPage(),
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
      ),
    );
  }
}