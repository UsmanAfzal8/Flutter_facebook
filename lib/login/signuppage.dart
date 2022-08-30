import 'package:facebook_2/Widgets/textfiled.dart';
import 'package:flutter/material.dart';

import '../Widgets/DatePicker.dart';
import '../Widgets/Radiobutton.dart';
import '../resources/Appimages.dart';
import '../resources/color_palette.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _firstname = TextEditingController();
  TextEditingController _secondname = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _firstname.dispose();
    _secondname.dispose();
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
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    width: 80,
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
                    labeltext: 'FirstName',
                    textcontroller: _firstname,
                    texttype: TextInputType.text,
                    pass: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldpage(
                    labeltext: 'SurName',
                    textcontroller: _secondname,
                    texttype: TextInputType.text,
                    pass: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldpage(
                    labeltext: 'Email',
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
                    height: 10,
                  ),
                  Customdatepicker(),
                  SizedBox(
                    height: 10,
                  ),
                  Radiochecker(),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      print('signup ');
                    },
                    child: Container(
                      width: double.infinity,
                      height: 42,
                      color: Color.fromARGB(255, 75, 160, 229),
                      child: Center(
                          child: Text(
                        'Signup',
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
                        'I have any account ?',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 189, 188, 188),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/Loginscreen');
                        },
                        child: Text(
                          'Login',
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
