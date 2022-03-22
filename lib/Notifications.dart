import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'main.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: themecolor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Notifications',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Icon(
                                  Icons.notifications,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )),
                      Expanded(
                        flex: 13,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 20.0,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.purple.shade50,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                    context, '/more_news');
                                              },
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(
                                                  Colors.deepPurple.shade500,
                                                ),
                                              ),
                                              child: const Text(
                                                  'Mark all as read')),
                                        ),
                                      ),
                                      Spacer(flex: 4),
                                      Expanded(
                                          child: Icon(
                                        Icons.filter_alt,
                                        size: 25,
                                        color: Colors.deepPurple,
                                      )),
                                      Expanded(
                                          child: Icon(
                                        Icons.clear,
                                        size: 25,
                                        color: Colors.deepPurple,
                                      )),
                                    ],
                                  ),
                                ),
                                Expanded(
                                    flex: 10,
                                    child: ListView.builder(
                                        itemCount: 15,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Row(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Container(
                                                    height: 60,
                                                    width: 320,
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10)),
                                                      color: Colors.white,
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25),
                                                            child: Container(
                                                              color: Colors
                                                                  .purple
                                                                  .shade50,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.all(10.0),
                                                                child: Text('SP',
                                                                  style: TextStyle(
                                                                    fontSize: 20,
                                                                    color: Colors.black,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                            'Job application submitted\nfor Junior Front-end developer'),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 11.0),
                                                          child: Row(
                                                            children: [
                                                              InkWell(
                                                                child: Column (
                                                                  children: [
                                                                    Container(
                                                                      height: 60,
                                                                      width: 35,
                                                                      color: Colors.deepPurple,
                                                                      child: Icon(Icons.check_circle, color: Colors.white,),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              InkWell(
                                                                child: Column(children: [
                                                                  Container(
                                                                    height: 60,
                                                                    width: 35,
                                                                    decoration: BoxDecoration(
                                                                      color: Colors.deepPurple.shade200,
                                                                      borderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
                                                                    ),
                                                                    child: Icon(MdiIcons.closeCircle, color: Colors.white,),
                                                                  )
                                                                ]),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        })),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
