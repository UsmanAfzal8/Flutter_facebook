import 'package:facebook_2/Screens/screens.dart';
import 'package:facebook_2/login/signup/loginpage.dart';
import 'package:facebook_2/login/signuppage.dart';
import 'package:flutter/material.dart';

import 'resources/color_palette.dart';

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
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colorpalette.scaffold,
      ),
      initialRoute: '/Loginscreen',
      routes: {
        '/': (context) => HomeScreen(),
        '/Loginscreen': (context) => LoginScreen(),
        '/Signupscreen': (context) => SignupScreen(),
      },
    );
  }
}
