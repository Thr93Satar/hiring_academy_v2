import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'main.dart';
import 'package:flutter/material.dart';

class ViewJobList extends StatefulWidget {
  const ViewJobList({Key? key}) : super(key: key);

  @override
  State<ViewJobList> createState() => _ViewJobListState();
}

class _ViewJobListState extends State<ViewJobList> {
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
                      borderRadius: const BorderRadius.all(Radius.circular(25),
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
                  padding: const EdgeInsets.only(top: 50,bottom: 40, left: 10,right: 10,),
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5.0),
                                        child: Text('Job Application 1 :'),
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
                                                children: [
                                                  Text('Junior Computer Engineer',
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
