import 'package:facebook_2/Widgets/textfiled.dart';
import 'package:facebook_2/resources/Appimages.dart';
import 'package:flutter/material.dart';

import '../../resources/color_palette.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorpalette.facebookblue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(Appimages.logo2x),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Textfieldpage(
                    labeltext: 'Enter Email',
                    textcontroller: _emailcontroller,
                    texttype: TextInputType.emailAddress,
                    pass: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldpage(
                    labeltext: 'Password',
                    textcontroller: _passwordcontroller,
                    texttype: TextInputType.text,
                    pass: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      print('Login ');
                    },
                    child: Container(
                      width: double.infinity,
                      height: 42,
                      color: Color.fromARGB(255, 75, 160, 229),
                      child: Center(
                          child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have any account ?',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 189, 188, 188),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/Signupscreen');
                        },
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
