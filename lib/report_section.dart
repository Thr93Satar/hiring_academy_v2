import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';


class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  int maxlines= 5;
  String? value;
  String? selectCat= "";
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("Report bad usage"),value: "Report bad usage"),
      const DropdownMenuItem(child:  Text("Report bugs"),value: "Report bugs"),
    ];
    return menuItems;
  }

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
                                const Expanded(
                                  flex: 1,
                                  child: Text('We are here to help',
                                  style: TextStyle (
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                    child: SvgPicture.asset ('assets/images/24-hours-help-svgrepo-com.svg', height: 40, width: 40,)),
                                Spacer(flex: 1,),
                                const Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 10.0),
                                    child: TextField (
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        suffixIcon: Icon(
                                          MdiIcons.account,
                                          color: Colors.deepPurple,
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.red, width: 5),
                                        ),
                                        labelText: 'Name',
                                      ),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 10.0),
                                    child: TextField (
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        suffixIcon: Icon(
                                          MdiIcons.email,
                                          color: Colors.deepPurple,
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.red, width: 5),
                                        ),
                                        labelText: 'Email',
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: DropdownButtonFormField(
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(color: Colors.black, width: 2),
                                        ),
                                        filled: true,
                                      ),
                                      validator: (value) => value == null ? "Select category" : null,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectCat = newValue!;
                                        });
                                      },
                                      items: dropdownItems,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 12),
                                    height: maxlines * 24.0,
                                    child: TextField(
                                      maxLines: maxlines,
                                      decoration: InputDecoration(
                                        hintText: "Write down your problem",
                                        fillColor: Colors.white,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                  ElevatedButton(
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
                                                              'Report submitted successfully',
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
                                      child: const Text('Submit'),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.deepPurple,
                                        padding: const EdgeInsets.all(16),
                                      ),
                                  ),
                                ],),
                                    ))
                              ]
                              ),
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
