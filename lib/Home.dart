import 'package:flutter/material.dart';
import 'package:hiring_academy_v2/main.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        leading: IconButton(
          icon: const Icon(
            Icons.notifications_none,
            size: 25,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
            print('This is Notification page');
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                print('Hii i am your account');
              },
              icon: const Icon(
                Icons.account_circle,
                size: 25,
              ))
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: elementcolor,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 20,
          iconSize: 10,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: CircleAvatar(
                  maxRadius: 16,
                  minRadius: 15,
                  backgroundColor: Colors.deepPurple.shade500,
                  child: const Icon(
                    Icons.cottage_rounded,
                    color: Colors.white,
                  )),
            ),
            BottomNavigationBarItem(
                label: 'Work',
                icon: CircleAvatar(
                    maxRadius: 16,
                    minRadius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.work,
                      color: Colors.deepPurple.shade500,
                    ))),
            BottomNavigationBarItem(
                label: 'Company',
                icon: CircleAvatar(
                    maxRadius: 16,
                    minRadius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.apartment_rounded,
                      color: Colors.deepPurple.shade500,
                    ))),
            BottomNavigationBarItem(
                label: 'Progression',
                icon: CircleAvatar(
                    maxRadius: 16,
                    minRadius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.donut_small_rounded,
                      color: Colors.deepPurple.shade500,
                    ))),
            BottomNavigationBarItem(
                label: 'More',
                icon: CircleAvatar(
                    maxRadius: 16,
                    minRadius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.deepPurple.shade500,
                    ))),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(children: [
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                            height: 160,
                            width: 180,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                color: Colors.purple.shade50,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 25.0),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "What's New",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Icon(
                                        MdiIcons
                                            .newspaperVariantMultipleOutline,
                                        size: 40,
                                        color: Colors.deepPurple.shade500,
                                      ),
                                    ]),
                              ),
                            )),
                        Padding(//--------------------------------------------------------------------- First picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 150.0),
                          child: SizedBox(
                              height: 160,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(20.0)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                          alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                          ClipRRect(
                                            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                            child: Image.asset(
                                                'assets/images/pexels-brett-sayles-1426044.png',
                                                fit: BoxFit.cover,
                                                width: 180.0,
                                                height: 160.0),
                                          ),
                                          Container(
                                            height: 160.0,
                                            decoration: BoxDecoration(
                                                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                                color: Colors.black,
                                                gradient: LinearGradient(
                                                    begin: FractionalOffset
                                                        .center,
                                                    end: FractionalOffset
                                                        .bottomCenter,
                                                    colors: [
                                                      Colors.grey
                                                          .withOpacity(0.0),
                                                      Colors.black,
                                                    ],
                                                    )),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                            child: Text(
                                              'Life of Videographer',
                                              style: TextStyle(
                                                  color: Colors.white
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ]),
                              )),
                        ), //------------------------------------------------------------------- First picture in the slider ----------------------------//
                        Padding(//-------------------------------------------------------------- Second picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 300.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/farhad-ibrahimzade-54dvxsQeQIM-unsplash.jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(19.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'Chinatown Resturants',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ),//------------------------------------------------------------ second picture in the slider ---------------------------------//
                        Padding(//------------------------------------------------------ third picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 450.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/tim-mossholder-GOMhuCj-O9w-unsplash.jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(19.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'Creative Ideas',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ), //--------------------------------------------------------------------- third picture in the slider ---------------------------------//
                        Padding(//---------------------------------------------------------------- forth picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 600.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/olena-sergienko-dIMJWLx1YbE-unsplash.jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(19.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'Life and Technology',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ), //--------------------------------------------------------------------- forth picture in the slider ---------------------------------//
                        Padding(//---------------------------------------------------------------- fifth picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 750.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/pexels-pixabay-260367.jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(19.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'Fighting Flames',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ), //---------------------------------------------------------------- fifth picture in the slider ---------------------------------//
                        Padding(//----------------------------------------------------------- Sixth picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 900.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/pexels-energepiccom-175045 (1).jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(19.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'New Contracts',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ), //----------------------------------------------------------- Sixth picture in the slider ---------------------------------//
                                            ]),
                                      ),
                                    ]),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 20,
                width: 50,
                child: Container(
                  color: Colors.red,
                ),
              )
            ],
          ),
          Expanded(
            child: Row(children: [
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                            height: 150,
                            width: 180,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                                color: Colors.purple.shade50,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 25.0),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "What's New",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Icon(
                                        MdiIcons
                                            .newspaperVariantMultipleOutline,
                                        size: 40,
                                        color: Colors.deepPurple.shade500,
                                      ),
                                    ]),
                              ),
                            )),
                        Padding(//--------------------------------------------------------------------- First picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 150.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(20.0)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                                child: Image.asset(
                                                    'assets/images/pexels-brett-sayles-1426044.png',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'Life of Videographer',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ), //------------------------------------------------------------------- First picture in the slider ----------------------------//
                        Padding(//-------------------------------------------------------------- Second picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 300.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/farhad-ibrahimzade-54dvxsQeQIM-unsplash.jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(19.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'Chinatown Resturants',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ),//------------------------------------------------------------ second picture in the slider ---------------------------------//
                        Padding(//------------------------------------------------------ third picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 450.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/tim-mossholder-GOMhuCj-O9w-unsplash.jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(19.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'Creative Ideas',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ), //--------------------------------------------------------------------- third picture in the slider ---------------------------------//
                        Padding(//---------------------------------------------------------------- forth picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 600.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/olena-sergienko-dIMJWLx1YbE-unsplash.jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(19.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'Life and Technology',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ), //--------------------------------------------------------------------- forth picture in the slider ---------------------------------//
                        Padding(//---------------------------------------------------------------- fifth picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 750.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/pexels-pixabay-260367.jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(19.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'Fighting Flames',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ), //---------------------------------------------------------------- fifth picture in the slider ---------------------------------//
                        Padding(//----------------------------------------------------------- Sixth picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 900.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/pexels-energepiccom-175045 (1).jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(19.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'New Contracts',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ), //----------------------------------------------------------- Sixth picture in the slider ---------------------------------//
                                            ]),
                                      ),
                                    ]),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 20,
                width: 50,
                child: Container(
                  color: Colors.red,
                ),
              )
            ],
          ),
          Expanded(
            child: Row(children: [
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                            height: 150,
                            width: 180,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                                color: Colors.purple.shade50,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 25.0),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "What's New",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Icon(
                                        MdiIcons
                                            .newspaperVariantMultipleOutline,
                                        size: 40,
                                        color: Colors.deepPurple.shade500,
                                      ),
                                    ]),
                              ),
                            )),
                        Padding(//--------------------------------------------------------------------- First picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 150.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(20.0)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                                child: Image.asset(
                                                    'assets/images/pexels-brett-sayles-1426044.png',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'Life of Videographer',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ), //------------------------------------------------------------------- First picture in the slider ----------------------------//
                        Padding(//-------------------------------------------------------------- Second picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 300.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/farhad-ibrahimzade-54dvxsQeQIM-unsplash.jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(19.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'Chinatown Resturants',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ),//------------------------------------------------------------ second picture in the slider ---------------------------------//
                        Padding(//------------------------------------------------------ third picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 450.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/tim-mossholder-GOMhuCj-O9w-unsplash.jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(19.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'Creative Ideas',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ), //--------------------------------------------------------------------- third picture in the slider ---------------------------------//
                        Padding(//---------------------------------------------------------------- forth picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 600.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/olena-sergienko-dIMJWLx1YbE-unsplash.jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(19.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'Life and Technology',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ), //--------------------------------------------------------------------- forth picture in the slider ---------------------------------//
                        Padding(//---------------------------------------------------------------- fifth picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 750.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/pexels-pixabay-260367.jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(19.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'Fighting Flames',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ), //---------------------------------------------------------------- fifth picture in the slider ---------------------------------//
                        Padding(//----------------------------------------------------------- Sixth picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 900.0),
                          child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: (){},
                                        child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/pexels-energepiccom-175045 (1).jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 180.0),
                                              ),
                                              Container(
                                                height: 180.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(19.0)),
                                                    color: Colors.black,
                                                    gradient: LinearGradient(
                                                      begin: FractionalOffset
                                                          .center,
                                                      end: FractionalOffset
                                                          .bottomCenter,
                                                      colors: [
                                                        Colors.grey
                                                            .withOpacity(0.0),
                                                        Colors.black,
                                                      ],
                                                    )),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(right: 15.0,bottom: 5.0),
                                                child: Text(
                                                  'New Contracts',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ), //----------------------------------------------------------- Sixth picture in the slider ---------------------------------//
                                            ]),
                                      ),
                                    ]),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}
