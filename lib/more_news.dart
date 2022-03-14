import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'main.dart';

class MoreN extends StatefulWidget {
  const MoreN({Key? key}) : super(key: key);

  @override
  State<MoreN> createState() => _MoreNState();
}

class _MoreNState extends State<MoreN> {
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
          style: TextStyle(fontFamily: 'Cabin', fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.account_circle,
                size: 25,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              }
          )],
      ),
      body: Column(
        children: [
          SizedBox (
            height: 620,
            width: 340,
            child: Container(
                margin: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.purple.shade50,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    child: Column (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 360,
                              child:  Container(
                                decoration: BoxDecoration(
                                  color: themecolor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text('What\'s New',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(MdiIcons.newspaperVariantMultipleOutline,size: 25,color: Colors.white,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 200.0),
                                    child: SizedBox(
                                      height: 50,
                                      width: 360,
                                      child:  Container(
                                        decoration: BoxDecoration(
                                          color: themecolor,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: const [
                                              Text('Life of the Videographer',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontFamily: 'Cabin',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 200,
                                    width: 340,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            spreadRadius: -2,
                                            blurRadius: 8,
                                            offset: Offset(0.0,2),
                                          ),
                                        ],
                                        color: Colors.red,
                                      ),
                                      child: Image.asset('assets/images/pexels-brett-sayles-1426044.png',fit: BoxFit.cover,),
                                    ),
                                  ),
                                ]
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 240,
                              width: 310,
                              child: Container(
                                decoration:BoxDecoration(
                                  borderRadius:const BorderRadius.all(Radius.circular(10)),
                                  color: themecolor,
                                ),
                                child: const SingleChildScrollView(
                                  child:  Padding(
                                    padding: EdgeInsets.all(14.0),
                                    child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                                        'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                                        ' when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n'
                                        'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '
                                        'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, '
                                        'and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\'Lorem Ipsum is simply dummy text of the printing '
                                        'and typesetting industry. \n'
                                        'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                                        ' when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n'
                                        'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '
                                        'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, '
                                        'and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        wordSpacing: -1,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Cabin',
                                        fontSize: 16,
                                        overflow: TextOverflow.fade,
                                        height: 1.5,
                                      ),),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 200.0),
                                    child: SizedBox(
                                      height: 50,
                                      width: 360,
                                      child:  Container(
                                        decoration: BoxDecoration(
                                          color: themecolor,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: const [
                                              Text('Life of the Videographer',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontFamily: 'Cabin',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 200,
                                    width: 340,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            spreadRadius: -2,
                                            blurRadius: 8,
                                            offset: Offset(0.0,2),
                                          ),
                                        ],
                                        color: Colors.red,
                                      ),
                                      child: Image.asset('assets/images/pexels-brett-sayles-1426044.png',fit: BoxFit.cover,),
                                    ),
                                  ),
                                ]
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 240,
                              width: 310,
                              child: Container(
                                decoration:BoxDecoration(
                                  borderRadius:const BorderRadius.all(Radius.circular(10)),
                                  color: themecolor,
                                ),
                                child: const SingleChildScrollView(
                                  child:  Padding(
                                    padding: EdgeInsets.all(14.0),
                                    child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                                        'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                                        ' when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n'
                                        'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '
                                        'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, '
                                        'and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\'Lorem Ipsum is simply dummy text of the printing '
                                        'and typesetting industry. \n'
                                        'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                                        ' when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n'
                                        'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '
                                        'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, '
                                        'and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        wordSpacing: -1,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Cabin',
                                        fontSize: 16,
                                        overflow: TextOverflow.fade,
                                        height: 1.5,
                                      ),),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 200.0),
                                    child: SizedBox(
                                      height: 50,
                                      width: 360,
                                      child:  Container(
                                        decoration: BoxDecoration(
                                          color: themecolor,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: const [
                                              Text('Life of the Videographer',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontFamily: 'Cabin',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 200,
                                    width: 340,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            spreadRadius: -2,
                                            blurRadius: 8,
                                            offset: Offset(0.0,2),
                                          ),
                                        ],
                                        color: Colors.red,
                                      ),
                                      child: Image.asset('assets/images/pexels-brett-sayles-1426044.png',fit: BoxFit.cover,),
                                    ),
                                  ),
                                ]
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 240,
                              width: 310,
                              child: Container(
                                decoration:BoxDecoration(
                                  borderRadius:const BorderRadius.all(Radius.circular(10)),
                                  color: themecolor,
                                ),
                                child: const SingleChildScrollView(
                                  child:  Padding(
                                    padding: EdgeInsets.all(14.0),
                                    child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                                        'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                                        ' when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n'
                                        'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '
                                        'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, '
                                        'and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\'Lorem Ipsum is simply dummy text of the printing '
                                        'and typesetting industry. \n'
                                        'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                                        ' when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n'
                                        'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '
                                        'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, '
                                        'and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        wordSpacing: -1,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Cabin',
                                        fontSize: 16,
                                        overflow: TextOverflow.fade,
                                        height: 1.5,
                                      ),),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 200.0),
                                    child: SizedBox(
                                      height: 50,
                                      width: 360,
                                      child:  Container(
                                        decoration: BoxDecoration(
                                          color: themecolor,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: const [
                                              Text('Emerging Technologies',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontFamily: 'Cabin',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 200,
                                    width: 340,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            spreadRadius: -2,
                                            blurRadius: 8,
                                            offset: Offset(0.0,2),
                                          ),
                                        ],
                                        color: Colors.red,
                                      ),
                                      child: Image.asset('assets/images/olena-sergienko-dIMJWLx1YbE-unsplash.jpg',fit: BoxFit.cover,),
                                    ),
                                  ),
                                ]
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 240,
                              width: 310,
                              child: Container(
                                decoration:BoxDecoration(
                                  borderRadius:const BorderRadius.all(Radius.circular(10)),
                                  color: themecolor,
                                ),
                                child: const SingleChildScrollView(
                                  child:  Padding(
                                    padding: EdgeInsets.all(14.0),
                                    child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                                        'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                                        ' when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n'
                                        'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '
                                        'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, '
                                        'and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\'Lorem Ipsum is simply dummy text of the printing '
                                        'and typesetting industry. \n'
                                        'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                                        ' when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n'
                                        'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '
                                        'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, '
                                        'and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        wordSpacing: -1,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Cabin',
                                        fontSize: 16,
                                        overflow: TextOverflow.fade,
                                        height: 1.5,
                                      ),),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}
