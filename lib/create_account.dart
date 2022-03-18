import 'package:flutter_svg/svg.dart';
import 'package:hiring_academy_v2/login.dart';
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
      body: Column(
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
                          top: 20.0, left: 20, right: 20, bottom: 10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            MdiIcons.account,
                            color: Colors.deepPurple,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 5),
                          ),
                          labelText: 'User account',
                        ),
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
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20.0, left: 20, right: 20, bottom: 10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            MdiIcons.account,
                            color: Colors.deepPurple,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 5),
                          ),
                          labelText: 'User account',
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20.0, left: 20, right: 20, bottom: 10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            MdiIcons.account,
                            color: Colors.deepPurple,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 5),
                          ),
                          labelText: 'User account',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30.0,
                            top: 10,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder:
                                          (BuildContext context) =>
                                              const Login()));
                            },
                            child: const Icon(
                                Icons.arrow_forward_rounded),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurple,
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(16),
                            ),
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
    );
  }
}
