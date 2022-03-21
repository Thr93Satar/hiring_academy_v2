import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'main.dart';

class SubmittedApp extends StatefulWidget {
  const SubmittedApp({Key? key}) : super(key: key);

  @override
  State<SubmittedApp> createState() => _SubmittedAppState();
}

class _SubmittedAppState extends State<SubmittedApp> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: themecolor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          title: const Text(
            'Hiring Academy',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                icon: const Icon(
                  Icons.account_circle,
                  size: 25,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                })
          ],
        ),
        body: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: themecolor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Look for a job',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.work,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 520,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10.0,
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const OTP_reg()));
                                      },
                                      child: Row(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(top: 5.0),
                                            child: Icon(
                                              Icons.question_answer,
                                              size: 20,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Ask Question',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.deepPurple),
                                          ),
                                        ],
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: elementcolor,
                                        padding: const EdgeInsets.all(12),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10.0,
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const OTP_reg()));
                                      },
                                      child: Row(
                                        children: const [
                                          Text(
                                            'Apply',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.deepPurple),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5.0),
                                            child: Icon(
                                              Icons.add_circle,
                                              size: 20,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: elementcolor,
                                        padding: const EdgeInsets.all(12),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 50.0, bottom: 70.0, left: 10.0, right: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            color: elementcolor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5.0, left: 5.0),
                                    child: Container(
                                      height: 40,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.deepPurple),
                                        color: Colors.white,
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10),
                                        ),
                                      ),
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.only(top: 8.0, left: 15.0),
                                        child: Text(
                                          'Job Description :',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 130,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 6.5),
                                    child: Text(
                                      'CV',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 5.0),
                                    child: const Icon(
                                      Icons.upload,
                                      size: 25,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, left: 5.0, right: 5.0),
                                child: Container(
                                  height: 50,
                                  width: 340,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.deepPurple),
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(10),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, left: 5.0),
                                child: Container(
                                  height: 40,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.deepPurple),
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(10),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, left: 15.0),
                                    child: Text(
                                      'Job Requirements :',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, left: 5.0, right: 5.0),
                                child: Container(
                                  height: 100,
                                  width: 340,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.deepPurple),
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(10),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras arcu sapien, sagittis et pharetra nec, auctor et ante. Cras ante tellus, fermentum eu scelerisque sit amet, porta vitae dui. Integer venenatis, sem non viverra cursus, diam justo accumsan mi, id luctus risus tellus nec erat. Suspendisse leo nisl, aliquet et tortor at, ullamcorper molestie augue.'),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, left: 5.0),
                                child: Container(
                                  height: 40,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.deepPurple),
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(10),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, left: 15.0),
                                    child: Text(
                                      'Job Responsibilities :',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, left: 5.0, right: 5.0),
                                child: Container(
                                  height: 210,
                                  width: 340,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.deepPurple),
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(10),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                        'Nullam bibendum turpis neque, sit amet maximus justo interdum non. Donec suscipit erat orci. Nulla ultrices quis eros a porta. Nullam dolor ipsum, accumsan in volutpat a, iaculis eget magna. Quisque facilisis odio quis est pretium, vel blandit risus consectetur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum id viverra sem. Sed ut tellus faucibus, suscipit nibh non, finibus augue. Proin sollicitudin, purus eu scelerisque pulvinar, dolor quam feugiat risus, non tincidunt leo leo nec mauris. '),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
              Center(
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      width: 300.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200.withOpacity(0.15)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Application has been submitted for Computer Engineer. We will notify you with future update about your application ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SvgPicture.asset(
                              'assets/images/accept-mark-check-tick-svgrepo-com.svg',
                              width: 60,
                              height: 60,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
