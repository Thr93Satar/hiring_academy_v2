import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'main.dart';
import 'package:flutter/material.dart';

class P_reset extends StatefulWidget {
  const P_reset({Key? key}) : super(key: key);

  @override
  State<P_reset> createState() => _P_resetState();
}

class _P_resetState extends State<P_reset> {
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
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(top: 25.0,),
              child: Text(
                'Now, please check your mail box for the password reset link', textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Cabin',
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple.shade400,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(16),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/password_reset_2');
                },
                child: const Icon(Icons.arrow_forward_rounded),
              ),
          ),
          const Spacer(flex: 2,),
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
