import 'package:flutter_svg/svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'main.dart';
import 'package:flutter/material.dart';

class CloseJobApplications extends StatefulWidget {
  const CloseJobApplications({Key? key}) : super(key: key);

  @override
  State<CloseJobApplications> createState() => _CloseJobApplicationsState();
}

class _CloseJobApplicationsState extends State<CloseJobApplications> {
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
            child: Stack(
              children: [
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
                          height: 10,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'View Jobs',
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
                        const Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    bottom: 40,
                    left: 10,
                    right: 10,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade50,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          child: ListView.separated(
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(left: 5.0),
                                        child: Text('Job Application 1 :'),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.pushReplacementNamed(
                                                  context, '/view_application');
                                            },
                                            child: Container(
                                              height: 50,
                                              width: 250,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: Colors.deepPurple,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    'Junior Computer Engineer',
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 25,
                                          ),
                                          InkWell(
                                              onTap: () {
                                                showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return AlertDialog(
                                                        titlePadding:
                                                            EdgeInsets.zero,
                                                        contentPadding:
                                                            const EdgeInsets.all(10),
                                                        insetPadding:
                                                            const EdgeInsets.all(10),
                                                        content: InkWell(
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: ClipRect(
                                                            child: Container(
                                                              width: 300.0,
                                                              height: 300.0,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .grey
                                                                      .shade200
                                                                      .withOpacity(
                                                                          0.15)),
                                                              child: Center(
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      height: 60,
                                                                      width: 100,
                                                                      decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                                                      color: Colors.red,),
                                                                      child: const Padding(
                                                                            padding: EdgeInsets.only(top: 18.0, left: 25.0),
                                                                            child: Text(
                                                                        'Alert !', style: TextStyle(
                                                                            color: Colors.white,
                                                                            fontSize: 20,
                                                                            fontWeight: FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                          ),
                                                                    ),
                                                                    const SizedBox(
                                                                      height: 30,
                                                                    ),
                                                                    const Text(
                                                                      'You are about to delete job application 1 . Are you sure ?',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                    const SizedBox(
                                                                      height:
                                                                          20,
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                      children: [
                                                                        InkWell(
                                                                          onTap: (){
                                                                            Navigator.pop(context);
                                                                          },
                                                                          child: const Icon(
                                                                            MdiIcons.closeCircle,
                                                                            size: 60,
                                                                            color: Colors.red,
                                                                          ),
                                                                        ),
                                                                        const SizedBox(
                                                                          width: 80,
                                                                        ),
                                                                        InkWell(
                                                                          onTap: (){
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
                                                                                                  'Application has bee removed from jobs list',
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
                                                                          child: const Icon(
                                                                            Icons.check_circle,
                                                                            size: 60,
                                                                            color: Colors.green,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    });
                                              },
                                              child: const Icon(
                                                MdiIcons.closeCircle,
                                                size: 40,
                                                color: Colors.red,
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const Divider(
                                  height: 10,
                                );
                              },
                              itemCount: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
