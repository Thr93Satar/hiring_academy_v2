import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: bodycolor,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                  width: 360,
                  child: Text(
                    'Welcome to Hiring Academy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 185.5),
                      child: SizedBox(
                        height: 420,
                        width: 360,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(60),
                                topLeft: Radius.circular(60),
                                ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: -20,
                                blurRadius: 300,
                                offset: Offset(0, -1),
                              )
                            ],
                            color: Colors.purple.shade50,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0),
                                  child: const SizedBox(
                                    height: 30,
                                    width: 360,
                                    child: const Text(
                                      'Sign-In',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontFamily: 'Cabin',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                                ),
                                const TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      MdiIcons.account,
                                      color: Colors.deepPurple,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 5),
                                    ),
                                    labelText: 'User account',
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const TextField(
                                  obscureText: true,
                                  obscuringCharacter: "*",
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      MdiIcons.formTextboxPassword,
                                      color: Colors.deepPurple,
                                    ),
                                    border: const OutlineInputBorder(),
                                    labelText: 'Password',
                                  ),
                                ),
                                Row(
                                  children: const [
                                    InkWell(
                                      child: Text('Forgot password ?'),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: SizedBox(
                        height: 240,
                        width: 340,
                        child: SvgPicture.asset(
                          'assets/images/jobs_svg2.svg',
                          fit: BoxFit.cover,
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
    );
  }
}
