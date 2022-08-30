import 'package:flutter/material.dart';

import '../../Widgets/textfiled.dart';
import '../../resources/color_palette.dart';

class Pcloginsignup extends StatefulWidget {
  const Pcloginsignup({Key? key}) : super(key: key);

  @override
  State<Pcloginsignup> createState() => _PcloginsignupState();
}

class _PcloginsignupState extends State<Pcloginsignup> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  late double _width = MediaQuery.of(context).size.width;
  late double _height = MediaQuery.of(context).size.height;
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
      backgroundColor: Colorpalette.scaffold,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Facebook',
                style: TextStyle(
                  color: Colorpalette.facebookblue,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.055,
                ),
              ),
              Text(
                'Facebook helps you connect and share\n with the people in your life.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.017,
                ),
              ),
            ],
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Textfieldpage2(
                    labeltext: 'Enter Email',
                    textcontroller: _emailcontroller,
                    texttype: TextInputType.emailAddress,
                    pass: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldpage2(
                    labeltext: 'Password',
                    textcontroller: _passwordcontroller,
                    texttype: TextInputType.text,
                    pass: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      print('Login ');
                    },
                    child: Container(
                      width: double.infinity,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 75, 160, 229),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                          child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.013),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      print('Signup ');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Color(0xff4ab230),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          'Create New Account',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.013),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
