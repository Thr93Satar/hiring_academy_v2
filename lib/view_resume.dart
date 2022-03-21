import 'dart:ui';

import 'package:flutter_svg/svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'main.dart';
import 'package:flutter/material.dart';

class ViewResume extends StatefulWidget {
  const ViewResume({Key? key}) : super(key: key);

  @override
  State<ViewResume> createState() => _ViewResumeState();
}

class _ViewResumeState extends State<ViewResume> {

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
      body: Column(
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
                            'Applicant Resume',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(MdiIcons.applicationEdit,
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
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                return AlertDialog(
                                  titlePadding: EdgeInsets.zero,
                                  contentPadding: EdgeInsets.all(10),
                                  insetPadding: EdgeInsets.zero,
                                  content: InkWell(
                                    onTap: (){
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                    },
                                    child: ClipRect(
                                      child: Container(
                                        width: 300.0,
                                        height: 300.0,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade200.withOpacity(0.15)),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                'Application Rejected ',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Icon(MdiIcons.closeCircle, size: 60, color: Colors.red,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                                    }
                                );
                              },
                              child: Row(
                                children: const [
                                  Icon(
                                    MdiIcons.closeCircle,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Reject',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
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
                            width: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        titlePadding: EdgeInsets.zero,
                                        contentPadding: EdgeInsets.all(10),
                                        insetPadding: EdgeInsets.zero,
                                        content: InkWell(
                                          onTap: (){
                                            Navigator.pop(context);
                                            Navigator.pop(context);
                                          },
                                          child: ClipRect(
                                            child: Container(
                                              width: 300.0,
                                              height: 300.0,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade200.withOpacity(0.15)),
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: const [
                                                    Text(
                                                      'Application accepted for further review',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Icon(Icons.check_circle, size: 60, color: Colors.green,)
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                );
                              },
                              child: Row(
                                children: const [
                                  Text(
                                    'Accept',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5.0),
                                    child: Icon(
                                      Icons.check_circle,
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
                    color: elementcolor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text('Person 1 :'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            Navigator.pushReplacementNamed(context, '/view_application');
                                          },
                                          child: Container(
                                            height: 50,
                                            width: 250,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Colors.deepPurple,
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Text('Bill Morphy - age 23 - Bsc.Degree',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ) ,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Navigator.pushReplacementNamed(context, '/view_resume');
                                          },
                                          child: SvgPicture.asset('assets/images/resume-svgrepo-com.svg', height: 40, width: 40,),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset('assets/images/Fake Resume.jpg')
                                  ],
                                ),
                              ),
                        ]),
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
