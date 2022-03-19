import 'dart:async';
import 'package:hiring_academy_v2/login.dart';
import 'home.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OTPConr extends StatefulWidget {
  const OTPConr({Key? key}) : super(key: key);

  @override
  State<OTPConr> createState() => _OTPConrState();
}

class _OTPConrState extends State<OTPConr> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), (){
      Navigator.pushReplacement(this.context, MaterialPageRoute(builder: (context)=>
      const Login()));
    });
  }
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
              Text(
                'Great job one step ahead',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.clip,
                ),
              ),
            ]),
          ),
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              'assets/images/like-svgrepo-com.svg',
              width: 60,
              height: 60,
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text('Welcome',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0, top: 10),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Now, you are a member in the Hiring Academy feel free to explore application features', textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(flex: 3,),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Still need help ?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple.shade400,
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Text('Contact Us',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}





