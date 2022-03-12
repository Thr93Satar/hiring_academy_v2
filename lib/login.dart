import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiring_academy_v2/home_signed_in.dart';
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
                        height: 425,
                        width: 360,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30),

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
                            padding: const EdgeInsets.only(left: 35.0,right: 35.0,top: 25),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 15.0),
                                  child: SizedBox(
                                    height: 30,
                                    width: 360,
                                    child: Text(
                                      'Sign-In :',
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
                                    border: OutlineInputBorder(),
                                    labelText: 'Password',
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 14.0),
                                                child: InkWell(
                                                  onTap: () {
                                                    print(
                                                        'this is forgot password page');
                                                  },
                                                  child: const Text(
                                                    'Forgot password ?',
                                                    style: TextStyle(
                                                      fontFamily: 'Cabin',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 14.0),
                                                child: InkWell(
                                                  onTap: () {
                                                    print(
                                                        'this is recover account page');
                                                  },
                                                  child: const Text(
                                                    'Recover Account ?',
                                                    style: TextStyle(
                                                      fontFamily: 'Cabin',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30.0,top: 10,),
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomeSI()));
                                                    },
                                                    child: const Icon(Icons
                                                        .arrow_forward_rounded),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      primary:
                                                          Colors.deepPurple,
                                                      shape:
                                                          const CircleBorder(),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              16),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Row(
                                      children: [
                                        const InkWell(
                                            child: Text(
                                          'Don\'t have an account yet ?',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        )),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        ElevatedButton(
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty
                                                      .resolveWith((states) =>
                                                          Colors.deepPurple),
                                              fixedSize: MaterialStateProperty
                                                  .resolveWith((states) =>
                                                      const Size(80.0, 40.0)),
                                            ),
                                            onPressed: () {
                                              print('go to create account page');
                                            },
                                            child: const Text(
                                              'Register',
                                              style: TextStyle(
                                                  fontSize: 14),
                                            ))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ), //-------------------------------- Main Sign in part-------------------------
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
                    ), //--------------------------------Illustration part ------------------------
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
