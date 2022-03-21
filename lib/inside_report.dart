import 'main.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class InsideReport extends StatefulWidget {
  const InsideReport({Key? key}) : super(key: key);

  @override
  State<InsideReport> createState() => _InsideReportState();
}

class _InsideReportState extends State<InsideReport> {
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
                              child: Text('Report',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.0),
                              child: Icon(
                                Icons.report,
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
                            borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                            color: Colors.purple.shade50,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(children: [
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/more_settings');
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          const Radius.circular(10)),
                                      border: Border.all(
                                        color: Colors.deepPurple,
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: const [
                                        Expanded(
                                            flex: 4,
                                            child: Padding(
                                              padding:
                                              EdgeInsets.only(left: 15.0),
                                              child: Text(
                                                'Report bad usage',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                            )),
                                        Spacer(flex: 2),
                                        Expanded(
                                            flex: 1,
                                            child: Icon(
                                              MdiIcons.alert,
                                              size: 35,
                                              color: Colors.deepPurple,
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(10)),
                                    border: Border.all(
                                      color: Colors.deepPurple,
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Expanded(
                                          flex: 3,
                                          child: Padding(
                                            padding:
                                            EdgeInsets.only(left: 15.0),
                                            child: Text(
                                              'Report a bug',
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                          )),
                                      Spacer(flex: 3),
                                      Expanded(
                                          flex: 1,
                                          child: Icon(Icons.bug_report_rounded,
                                              size: 35,
                                              color: Colors.deepPurple)),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Spacer(
                                flex: 7,
                              )
                            ]),
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
    );
  }
}
