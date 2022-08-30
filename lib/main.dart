import 'package:facebook_2/Screens/screens.dart';
import 'package:facebook_2/login/signup/loginpage.dart';
import 'package:facebook_2/login/signuppage.dart';
import 'package:flutter/material.dart';

import 'login/Pc/pcloginsignup.dart';
import 'resources/color_palette.dart';
import 'responce/responceui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colorpalette.scaffold,
        backgroundColor: Colors.white,
      ),
      initialRoute: '/responsiveui',
      routes: {
        '/': (context) => HomeScreen(),
        '/responsiveui': (context) => ResponsiveUi(
            mobileScreeenlayout: LoginScreen(),
            webScreeenlayout: Pcloginsignup()),
        '/Loginscreen': (context) => LoginScreen(),
        '/Signupscreen': (context) => SignupScreen(),
        '/Pcloginsignup': (context) => Pcloginsignup(),
      },
    );
  }
}
