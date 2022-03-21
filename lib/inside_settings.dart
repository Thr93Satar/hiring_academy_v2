import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class InsideSettings extends StatefulWidget {
  const InsideSettings({Key? key}) : super(key: key);

  @override
  State<InsideSettings> createState() => _InsideSettingsState();
}

  class _InsideSettingsState extends State<InsideSettings> {
  bool status6 = true;
  bool status7 = true;
  bool status8 = false;

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
                              child: Text('Settings',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.0),
                              child: Icon(
                                Icons.settings,
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
                                    children: [
                                      const Expanded(
                                          flex: 3, child: Padding(
                                        padding: EdgeInsets.only(left: 15.0),
                                        child: Text('Language',
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      )),
                                      const Spacer(flex: 3),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          FlutterSwitch(
                                            width: 60.0,
                                            height: 30.0,
                                            activeText: "En",
                                            inactiveText: "Ar",
                                            value: status6,
                                            valueFontSize: 10.0,
                                            borderRadius: 30.0,
                                            showOnOff: true,
                                            activeColor: themecolor,
                                            inactiveColor: themecolor,
                                            onToggle: (val) {
                                              setState(() {
                                                status6 = val;
                                              });
                                            },
                                          ),
                                          const SizedBox(
                                              width: 10,
                                          ),
                                        ],
                                      ),
                                    ],
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
                                    children: [
                                      const Expanded(
                                          flex: 3, child: Padding(
                                        padding: EdgeInsets.only(left: 15.0),
                                        child: Text('Notifications',
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      )),
                                      Spacer(flex: 3),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          FlutterSwitch(
                                            width: 60.0,
                                            height: 30.0,
                                            value: status7,
                                            valueFontSize: 10.0,
                                            borderRadius: 30.0,
                                            showOnOff: true,
                                            activeColor: themecolor,
                                            inactiveColor: themecolor,
                                            onToggle: (val) {
                                              setState(() {
                                                status7 = val;
                                              });
                                            },
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                    ],
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
                                    children:  [
                                      const Expanded(
                                          flex: 3, child: Padding(
                                        padding: EdgeInsets.only(left: 15.0),
                                        child: Text('Dark Mode',
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      )),
                                      Spacer(flex: 3),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          FlutterSwitch(
                                            width: 60.0,
                                            height: 30.0,
                                            value: status8,
                                            valueFontSize: 10.0,
                                            borderRadius: 30.0,
                                            showOnOff: true,
                                            activeColor: themecolor,
                                            inactiveColor: themecolor,
                                            onToggle: (val) {
                                              setState(() {
                                                status8 = val;
                                              });
                                            },
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Spacer(
                                flex: 6,
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
