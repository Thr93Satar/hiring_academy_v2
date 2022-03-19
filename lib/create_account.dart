import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hiring_academy_v2/login.dart';
import 'package:hiring_academy_v2/otp_page.dart';
import 'package:hiring_academy_v2/otp_page_reg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'main.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 4,
              child: SvgPicture.asset(
                'assets/images/Untitled-1.svg',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple.shade50,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Create your account',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize: 30,
                              ),
                            ),
                          ]),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, left: 20, right: 20, bottom: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              MdiIcons.account,
                              color: Colors.deepPurple,
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'User account',
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, left: 20, right: 20, bottom: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                MdiIcons.email,
                                color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, left: 20, right: 20, bottom: 10),
                        child: TextField(
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                MdiIcons.formTextboxPassword,
                                color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 5),
                              ),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, left: 20, right: 20, bottom: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                MdiIcons.phone,
                                color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 5),
                              ),
                              labelText: 'Phone',
                              labelStyle: TextStyle(
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const OTP_reg()));
                            },
                            child: const Text('Complete Registration'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurple,
                              padding: const EdgeInsets.all(16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
