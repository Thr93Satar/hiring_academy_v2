import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'New opportunities lies ahead',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child:
                  Stack(alignment: AlignmentDirectional.topCenter, children: [
                Container(
                  decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35),),
                    color: Colors.purple.shade50,
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/Mobile login.svg',
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 20.0, right: 20.0),
                          child: IconButton(
                              iconSize: 30,
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, '/create_account');
                              },
                              icon: const Icon(
                                Icons.arrow_forward_rounded,
                                color: Colors.deepPurple,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 40.0,left: 180),
                              child: Text('Join',
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 40.0,left: 50),
                              child: Text('Seek',
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 20.0,left: 280),
                              child: Text('Work',
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 215.0,left: 170),
                              child: Text('Because you\ndeserve',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
