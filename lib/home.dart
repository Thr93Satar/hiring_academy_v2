import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiring_academy_v2/job_search_result.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'main.dart';
import 'news.dart';
import 'package:filter_list/filter_list.dart';

class Option {
  final String name;
  final IconData icon;
  final Color color;

  const Option({
    required this.name,
    required this.icon,
    required this.color,
  });
}

class User {
  final String? name;
  final String? avatar;
  User({this.name, this.avatar});
}

List<User> userList = [
  User(name: "Jon", avatar: ""),
  User(name: "Lindsey ", avatar: ""),
  User(name: "Valarie ", avatar: ""),
  User(name: "Elyse ", avatar: ""),
  User(name: "Ethel ", avatar: ""),
  User(name: "Emelyan ", avatar: ""),
  User(name: "Catherine ", avatar: ""),
  User(name: "Stepanida  ", avatar: ""),
  User(name: "Carolina ", avatar: ""),
  User(name: "Nail  ", avatar: ""),
  User(name: "Kamil ", avatar: ""),
  User(name: "Mariana ", avatar: ""),
  User(name: "Katerina ", avatar: ""),
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var controller = TextEditingController();

  static const List<Option> options = [
    Option(name: "Home", icon: Icons.cottage_rounded, color: Colors.deepPurpleAccent),
    Option(name: "Jobs", icon: Icons.work, color: Colors.deepPurpleAccent),
    Option(name: "Company", icon: Icons.apartment_rounded, color: Colors.deepPurpleAccent),
    Option(name: "Progress", icon: Icons.donut_small_rounded, color: Colors.deepPurpleAccent),
    Option(name: "Settings", icon: Icons.more_horiz, color: Colors.deepPurpleAccent),
  ];
  int selectedPage = 0;

  Option get option => options[selectedPage];


  @override
  Widget build(BuildContext context) {

    void openFilterDialog() async {
      await FilterListDialog.display<User>(
        context,
        listData: userList,
        selectedListData: userList,
        choiceChipLabel: (user) => user!.name,
        validateSelectedItem: (list, val) => list!.contains(val),
        onItemSearch: (user, query) {
          return user.name!.toLowerCase().contains(query.toLowerCase());
        },
        onApplyButtonClick: (list) {
          setState(() {
            userList = List.from(list!);
          });
          Navigator.pop(context);
        },
        choiceChipBuilder: (context, item, isSelected) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              border: Border.all(
            color: isSelected! ? Colors.deepPurple : Colors.grey[300]!,
          )),
          child: Text(
            item.name,
            style: TextStyle(
                color: isSelected ? Colors.deepPurple : Colors.grey[300]),
          ),
        );
      },
      );
    }
    List<Widget> pageSelection = [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                          width: 150,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.purple.shade50,
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 35),
                                      child: const Text(
                                        "What's New",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Icon(
                                      MdiIcons.newspaperVariantMultipleOutline,
                                      size: 40,
                                      color: Colors.deepPurple.shade500,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
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
                                          child: const Text('See All')),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                        //--------------------------------------------------------------------- What's new container ----------------------------------------//
                        SizedBox(
                            child: Container(
                          margin: const EdgeInsets.only(bottom: 20, left: 155),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            color: Colors.purple.shade50,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushNamed(context, '/news');
                                    },
                                    child: Stack(
                                        alignment:
                                            AlignmentDirectional.bottomCenter,
                                        children: [
                                          SizedBox(
                                            child: AspectRatio(
                                              aspectRatio: 3 / 3,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                  'assets/images/pexels-brett-sayles-1426044.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          AspectRatio(
                                            aspectRatio: 3 / 3,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              19.0)),
                                                  color: Colors.black,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        FractionalOffset.center,
                                                    end: FractionalOffset
                                                        .bottomCenter,
                                                    colors: [
                                                      Colors.grey
                                                          .withOpacity(0.0),
                                                      Colors.black,
                                                    ],
                                                  )),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                right: 15.0, bottom: 5.0),
                                            child: Text(
                                              'Chinatown Resturants',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ]),
                        )),
                        //--------------------------------------------------------------------- First picture in the slider ---------------------------------//
                        SizedBox(
                            child: Container(
                          margin: const EdgeInsets.only(bottom: 20, left: 305),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            color: Colors.purple.shade50,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushNamed(context, '/news');
                                    },
                                    child: Stack(
                                        alignment:
                                            AlignmentDirectional.bottomCenter,
                                        children: [
                                          SizedBox(
                                            child: AspectRatio(
                                              aspectRatio: 3 / 3,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                  'assets/images/farhad-ibrahimzade-54dvxsQeQIM-unsplash.jpg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          AspectRatio(
                                            aspectRatio: 3 / 3,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              19.0)),
                                                  color: Colors.black,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        FractionalOffset.center,
                                                    end: FractionalOffset
                                                        .bottomCenter,
                                                    colors: [
                                                      Colors.grey
                                                          .withOpacity(0.0),
                                                      Colors.black,
                                                    ],
                                                  )),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                right: 15.0, bottom: 5.0),
                                            child: Text(
                                              'Chinatown Resturants',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ]),
                        )),
                        //--------------------------------------------------------------------- Second picture in the slider --------------------------------//
                        SizedBox(
                            child: Container(
                          margin: const EdgeInsets.only(bottom: 20, left: 455),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            color: Colors.purple.shade50,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const News()));
                                    },
                                    child: Stack(
                                        alignment:
                                            AlignmentDirectional.bottomCenter,
                                        children: [
                                          SizedBox(
                                            child: AspectRatio(
                                              aspectRatio: 3 / 3,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                  'assets/images/farhad-ibrahimzade-54dvxsQeQIM-unsplash.jpg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          AspectRatio(
                                            aspectRatio: 3 / 3,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              19.0)),
                                                  color: Colors.black,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        FractionalOffset.center,
                                                    end: FractionalOffset
                                                        .bottomCenter,
                                                    colors: [
                                                      Colors.grey
                                                          .withOpacity(0.0),
                                                      Colors.black,
                                                    ],
                                                  )),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                right: 15.0, bottom: 5.0),
                                            child: Text(
                                              'Chinatown Resturants',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ]),
                        )),
                        //--------------------------------------------------------------------- Third picture in the slider ---------------------------------//
                        SizedBox(
                            child: Container(
                          margin: const EdgeInsets.only(bottom: 20, left: 605),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            color: Colors.purple.shade50,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const News()));
                                    },
                                    child: Stack(
                                        alignment:
                                            AlignmentDirectional.bottomCenter,
                                        children: [
                                          SizedBox(
                                            child: AspectRatio(
                                              aspectRatio: 3 / 3,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                  'assets/images/farhad-ibrahimzade-54dvxsQeQIM-unsplash.jpg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          AspectRatio(
                                            aspectRatio: 3 / 3,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              19.0)),
                                                  color: Colors.black,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        FractionalOffset.center,
                                                    end: FractionalOffset
                                                        .bottomCenter,
                                                    colors: [
                                                      Colors.grey
                                                          .withOpacity(0.0),
                                                      Colors.black,
                                                    ],
                                                  )),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                right: 15.0, bottom: 5.0),
                                            child: Text(
                                              'Chinatown Resturants',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ]),
                        )),
                        //--------------------------------------------------------------------- Forth picture in the slider ---------------------------------//
                        SizedBox(
                            child: Container(
                          margin: const EdgeInsets.only(bottom: 20, left: 755),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            color: Colors.purple.shade50,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const News()));
                                    },
                                    child: Stack(
                                        alignment:
                                            AlignmentDirectional.bottomCenter,
                                        children: [
                                          SizedBox(
                                            child: AspectRatio(
                                              aspectRatio: 3 / 3,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                  'assets/images/farhad-ibrahimzade-54dvxsQeQIM-unsplash.jpg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          AspectRatio(
                                            aspectRatio: 3 / 3,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              19.0)),
                                                  color: Colors.black,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        FractionalOffset.center,
                                                    end: FractionalOffset
                                                        .bottomCenter,
                                                    colors: [
                                                      Colors.grey
                                                          .withOpacity(0.0),
                                                      Colors.black,
                                                    ],
                                                  )),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                right: 15.0, bottom: 5.0),
                                            child: Text(
                                              'Chinatown Resturants',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ]),
                        )),
                        //--------------------------------------------------------------------- Fifth picture in the slider ---------------------------------//
                        SizedBox(
                            child: Container(
                          margin: const EdgeInsets.only(bottom: 20, left: 905),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            color: Colors.purple.shade50,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const News()));
                                    },
                                    child: Stack(
                                        alignment:
                                            AlignmentDirectional.bottomCenter,
                                        children: [
                                          SizedBox(
                                            child: AspectRatio(
                                              aspectRatio: 3 / 3,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                  'assets/images/farhad-ibrahimzade-54dvxsQeQIM-unsplash.jpg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          AspectRatio(
                                            aspectRatio: 3 / 3,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              19.0)),
                                                  color: Colors.black,
                                                  gradient: LinearGradient(
                                                    begin:
                                                        FractionalOffset.center,
                                                    end: FractionalOffset
                                                        .bottomCenter,
                                                    colors: [
                                                      Colors.grey
                                                          .withOpacity(0.0),
                                                      Colors.black,
                                                    ],
                                                  )),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                right: 15.0, bottom: 5.0),
                                            child: Text(
                                              'Chinatown Resturants',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ]),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),

          // ----------------------------What's New -------------------------------------- //
          // Expanded(
          //   child: Row(
          //     children: [
          //       const SizedBox(
          //         //---------------------- padding right --------------------//
          //         width: 10,
          //       ),
          //       Expanded(
          //         //--------------------------------------Events Section ----------------------------//
          //         child: ListView(
          //             //------------------------- Listview Start --------------------//
          //             shrinkWrap: true,
          //             scrollDirection: Axis.horizontal,
          //             children: [
          //               Column(
          //                 //----------------------------------Vertical box--------------------------//
          //                 children: [
          //                   SizedBox(
          //                     height: 220,
          //                     width: 120,
          //                     child: Container(
          //                       decoration: BoxDecoration(
          //                         borderRadius: const BorderRadius.all(
          //                             Radius.circular(10)),
          //                         color: Colors.purple.shade50,
          //                       ),
          //                       child: Column(
          //                           mainAxisAlignment: MainAxisAlignment.end,
          //                           children: [
          //                             const Text(
          //                               "Events",
          //                               style: TextStyle(
          //                                 fontWeight: FontWeight.w600,
          //                                 fontSize: 18,
          //                               ),
          //                             ),
          //                             const SizedBox(
          //                               height: 2,
          //                             ),
          //                             Icon(
          //                               MdiIcons.satelliteUplink,
          //                               size: 40,
          //                               color: Colors.deepPurple.shade500,
          //                             ),
          //                             Padding(
          //                               padding:
          //                                   const EdgeInsets.only(top: 40.0),
          //                               child: ElevatedButton(
          //                                   onPressed: () {
          //                                     Navigator.pushNamed(
          //                                         context, '/more_events');
          //                                   },
          //                                   style: ButtonStyle(
          //                                     backgroundColor:
          //                                         MaterialStateProperty.all<
          //                                             Color>(
          //                                       Colors.deepPurple.shade500,
          //                                     ),
          //                                   ),
          //                                   child: const Text('See All')),
          //                             )
          //                           ]),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //               const SizedBox(
          //                 //---------------------- padding right --------------------//
          //                 width: 5,
          //               ),
          //               Column(
          //                 //----------------------------------Horiz boxes--------------------------//
          //                 children: [
          //                   SizedBox(
          //                       height: 105,
          //                       width: 140,
          //                       child: Container(
          //                         decoration: BoxDecoration(
          //                           borderRadius: const BorderRadius.all(
          //                               Radius.circular(5.0)),
          //                           color: Colors.purple.shade50,
          //                         ),
          //                         child: Column(
          //                             mainAxisAlignment:
          //                                 MainAxisAlignment.center,
          //                             children: [
          //                               InkWell(
          //                                 splashColor: Colors.white,
          //                                 onTap: () {
          //                                   Navigator.pushNamed(
          //                                       context, '/event');
          //                                 },
          //                                 child: Stack(
          //                                     alignment: AlignmentDirectional
          //                                         .bottomCenter,
          //                                     children: [
          //                                       ClipRRect(
          //                                         borderRadius:
          //                                             const BorderRadius.all(
          //                                                 Radius.circular(5.0)),
          //                                         child: Image.asset(
          //                                             'assets/images/pexels-luis-quintero-2774556.jpg',
          //                                             fit: BoxFit.cover,
          //                                             width: 180.0,
          //                                             height: 105.0),
          //                                       ),
          //                                       Container(
          //                                         height: 105.0,
          //                                         decoration: BoxDecoration(
          //                                             borderRadius:
          //                                                 const BorderRadius
          //                                                         .all(
          //                                                     Radius.circular(
          //                                                         5.0)),
          //                                             color: Colors.black,
          //                                             gradient: LinearGradient(
          //                                               begin: FractionalOffset
          //                                                   .center,
          //                                               end: FractionalOffset
          //                                                   .bottomCenter,
          //                                               colors: [
          //                                                 Colors.grey
          //                                                     .withOpacity(0.0),
          //                                                 Colors.black,
          //                                               ],
          //                                             )),
          //                                       ),
          //                                       const Padding(
          //                                         padding: EdgeInsets.only(
          //                                             bottom: 5.0),
          //                                         child: Text(
          //                                           'UX/UI Sessions',
          //                                           style: TextStyle(
          //                                               color: Colors.white),
          //                                         ),
          //                                       ),
          //                                     ]),
          //                               ),
          //                             ]),
          //                       )),
          //                   const SizedBox(
          //                     height: 5,
          //                   ),
          //                   SizedBox(
          //                       height: 110,
          //                       width: 140,
          //                       child: Container(
          //                         decoration: BoxDecoration(
          //                           borderRadius: const BorderRadius.all(
          //                               Radius.circular(5.0)),
          //                           color: Colors.purple.shade50,
          //                         ),
          //                         child: Column(
          //                             mainAxisAlignment:
          //                                 MainAxisAlignment.center,
          //                             children: [
          //                               InkWell(
          //                                 splashColor: Colors.white,
          //                                 onTap: () {},
          //                                 child: Stack(
          //                                     alignment: AlignmentDirectional
          //                                         .bottomCenter,
          //                                     children: [
          //                                       ClipRRect(
          //                                         borderRadius:
          //                                             const BorderRadius.all(
          //                                                 Radius.circular(5.0)),
          //                                         child: Image.asset(
          //                                             'assets/images/pexels-matheus-bertelli-3321793.jpg',
          //                                             fit: BoxFit.cover,
          //                                             width: 180.0,
          //                                             height: 110.0),
          //                                       ),
          //                                       Container(
          //                                         height: 110.0,
          //                                         decoration: BoxDecoration(
          //                                             borderRadius:
          //                                                 const BorderRadius
          //                                                         .all(
          //                                                     Radius.circular(
          //                                                         5.0)),
          //                                             color: Colors.black,
          //                                             gradient: LinearGradient(
          //                                               begin: FractionalOffset
          //                                                   .center,
          //                                               end: FractionalOffset
          //                                                   .bottomCenter,
          //                                               colors: [
          //                                                 Colors.grey
          //                                                     .withOpacity(0.0),
          //                                                 Colors.black,
          //                                               ],
          //                                             )),
          //                                       ),
          //                                       const Padding(
          //                                         padding: EdgeInsets.only(
          //                                             bottom: 5.0),
          //                                         child: Text(
          //                                           'General Talk',
          //                                           style: TextStyle(
          //                                               color: Colors.white),
          //                                         ),
          //                                       ),
          //                                     ]),
          //                               ),
          //                             ]),
          //                       )),
          //                 ],
          //               ),
          //               const SizedBox(
          //                 //---------------------- padding right --------------------//
          //                 width: 5,
          //               ),
          //               Column(
          //                 //----------------------------------Vertical boxes--------------------------//
          //                 children: [
          //                   SizedBox(
          //                       height: 220,
          //                       width: 140,
          //                       child: Container(
          //                         decoration: BoxDecoration(
          //                           borderRadius: const BorderRadius.all(
          //                               Radius.circular(5.0)),
          //                           color: Colors.purple.shade50,
          //                         ),
          //                         child: Column(
          //                             mainAxisAlignment:
          //                                 MainAxisAlignment.center,
          //                             children: [
          //                               InkWell(
          //                                 splashColor: Colors.white,
          //                                 onTap: () {},
          //                                 child: Stack(
          //                                     alignment: AlignmentDirectional
          //                                         .bottomCenter,
          //                                     children: [
          //                                       ClipRRect(
          //                                         borderRadius:
          //                                             const BorderRadius.all(
          //                                                 Radius.circular(5.0)),
          //                                         child: Image.asset(
          //                                             'assets/images/pexels-antoni-shkraba-4348403.jpg',
          //                                             fit: BoxFit.cover,
          //                                             width: 180.0,
          //                                             height: 220.0),
          //                                       ),
          //                                       Container(
          //                                         height: 220.0,
          //                                         decoration: BoxDecoration(
          //                                             borderRadius:
          //                                                 const BorderRadius
          //                                                         .all(
          //                                                     Radius.circular(
          //                                                         5.0)),
          //                                             color: Colors.black,
          //                                             gradient: LinearGradient(
          //                                               begin: FractionalOffset
          //                                                   .center,
          //                                               end: FractionalOffset
          //                                                   .bottomCenter,
          //                                               colors: [
          //                                                 Colors.grey
          //                                                     .withOpacity(0.0),
          //                                                 Colors.black,
          //                                               ],
          //                                             )),
          //                                       ),
          //                                       const Padding(
          //                                         padding: EdgeInsets.only(
          //                                             bottom: 5.0),
          //                                         child: Text(
          //                                           'Talking Tech Event',
          //                                           style: TextStyle(
          //                                               color: Colors.white),
          //                                         ),
          //                                       ),
          //                                     ]),
          //                               ),
          //                             ]),
          //                       )),
          //                 ],
          //               ),
          //               const SizedBox(
          //                 //---------------------- padding right --------------------//
          //                 width: 5,
          //               ),
          //               Column(
          //                 //----------------------------------Horiz boxes--------------------------//
          //                 children: [
          //                   Row(
          //                     //----------------------------------Horiz boxes--------------------------//
          //                     children: [
          //                       SizedBox(
          //                           height: 105,
          //                           width: 140,
          //                           child: Container(
          //                             decoration: BoxDecoration(
          //                               borderRadius: const BorderRadius.all(
          //                                   Radius.circular(5.0)),
          //                               color: Colors.purple.shade50,
          //                             ),
          //                             child: Column(
          //                                 mainAxisAlignment:
          //                                     MainAxisAlignment.center,
          //                                 children: [
          //                                   InkWell(
          //                                     splashColor: Colors.white,
          //                                     onTap: () {},
          //                                     child: Stack(
          //                                         alignment:
          //                                             AlignmentDirectional
          //                                                 .bottomCenter,
          //                                         children: [
          //                                           ClipRRect(
          //                                             borderRadius:
          //                                                 const BorderRadius
          //                                                         .all(
          //                                                     Radius.circular(
          //                                                         5.0)),
          //                                             child: Image.asset(
          //                                                 'assets/images/pexels-josh-sorenson-976866.jpg',
          //                                                 fit: BoxFit.cover,
          //                                                 width: 180.0,
          //                                                 height: 105.0),
          //                                           ),
          //                                           Container(
          //                                             height: 105.0,
          //                                             decoration: BoxDecoration(
          //                                                 borderRadius:
          //                                                     const BorderRadius
          //                                                             .all(
          //                                                         Radius
          //                                                             .circular(
          //                                                                 5.0)),
          //                                                 color: Colors.black,
          //                                                 gradient:
          //                                                     LinearGradient(
          //                                                   begin:
          //                                                       FractionalOffset
          //                                                           .center,
          //                                                   end: FractionalOffset
          //                                                       .bottomCenter,
          //                                                   colors: [
          //                                                     Colors.grey
          //                                                         .withOpacity(
          //                                                             0.0),
          //                                                     Colors.black,
          //                                                   ],
          //                                                 )),
          //                                           ),
          //                                           const Padding(
          //                                             padding: EdgeInsets.only(
          //                                                 bottom: 5.0),
          //                                             child: Text(
          //                                               'ScoreArena Festival',
          //                                               style: TextStyle(
          //                                                   color:
          //                                                       Colors.white),
          //                                             ),
          //                                           ),
          //                                         ]),
          //                                   ),
          //                                 ]),
          //                           )),
          //                       const SizedBox(
          //                         width: 5,
          //                       ),
          //                       SizedBox(
          //                           height: 105,
          //                           width: 140,
          //                           child: Container(
          //                             decoration: BoxDecoration(
          //                               borderRadius: const BorderRadius.all(
          //                                   Radius.circular(5.0)),
          //                               color: Colors.purple.shade50,
          //                             ),
          //                             child: Column(
          //                                 mainAxisAlignment:
          //                                     MainAxisAlignment.center,
          //                                 children: [
          //                                   InkWell(
          //                                     splashColor: Colors.white,
          //                                     onTap: () {},
          //                                     child: Stack(
          //                                         alignment:
          //                                             AlignmentDirectional
          //                                                 .bottomCenter,
          //                                         children: [
          //                                           ClipRRect(
          //                                             borderRadius:
          //                                                 const BorderRadius
          //                                                         .all(
          //                                                     Radius.circular(
          //                                                         5.0)),
          //                                             child: Image.asset(
          //                                                 'assets/images/pexels-stefan-lorentz-668137.jpg',
          //                                                 fit: BoxFit.cover,
          //                                                 width: 180.0,
          //                                                 height: 105.0),
          //                                           ),
          //                                           Container(
          //                                             height: 105.0,
          //                                             decoration: BoxDecoration(
          //                                                 borderRadius:
          //                                                     const BorderRadius
          //                                                             .all(
          //                                                         Radius
          //                                                             .circular(
          //                                                                 5.0)),
          //                                                 color: Colors.black,
          //                                                 gradient:
          //                                                     LinearGradient(
          //                                                   begin:
          //                                                       FractionalOffset
          //                                                           .center,
          //                                                   end:
          //                                                       FractionalOffset
          //                                                           .topCenter,
          //                                                   colors: [
          //                                                     Colors.grey
          //                                                         .withOpacity(
          //                                                             0.0),
          //                                                     Colors.black,
          //                                                   ],
          //                                                 )),
          //                                           ),
          //                                           const Padding(
          //                                             padding: EdgeInsets.only(
          //                                                 bottom: 85.0),
          //                                             child: Text(
          //                                               'Reading Day',
          //                                               style: TextStyle(
          //                                                   overflow:
          //                                                       TextOverflow
          //                                                           .ellipsis,
          //                                                   color:
          //                                                       Colors.white),
          //                                             ),
          //                                           ),
          //                                         ]),
          //                                   ),
          //                                 ]),
          //                           )),
          //                     ],
          //                   ),
          //                   const SizedBox(
          //                     height: 5,
          //                   ),
          //                   SizedBox(
          //                       //----------------------------------HorizBox--------------------------//
          //                       height: 110,
          //                       width: 285,
          //                       child: Container(
          //                         decoration: BoxDecoration(
          //                           borderRadius: const BorderRadius.all(
          //                               Radius.circular(5.0)),
          //                           color: Colors.purple.shade50,
          //                         ),
          //                         child: Column(
          //                             mainAxisAlignment:
          //                                 MainAxisAlignment.center,
          //                             children: [
          //                               InkWell(
          //                                 splashColor: Colors.white,
          //                                 onTap: () {},
          //                                 child: Stack(
          //                                     alignment: AlignmentDirectional
          //                                         .bottomCenter,
          //                                     children: [
          //                                       ClipRRect(
          //                                         borderRadius:
          //                                             const BorderRadius.all(
          //                                                 Radius.circular(5.0)),
          //                                         child: Image.asset(
          //                                             'assets/images/pexels-teddy-yang-2263436.jpg',
          //                                             fit: BoxFit.cover,
          //                                             width: 285.0,
          //                                             height: 110.0),
          //                                       ),
          //                                       Container(
          //                                         height: 110.0,
          //                                         decoration: BoxDecoration(
          //                                             borderRadius:
          //                                                 const BorderRadius
          //                                                         .all(
          //                                                     Radius.circular(
          //                                                         5.0)),
          //                                             color: Colors.black,
          //                                             gradient: LinearGradient(
          //                                               begin: FractionalOffset
          //                                                   .center,
          //                                               end: FractionalOffset
          //                                                   .bottomCenter,
          //                                               colors: [
          //                                                 Colors.grey
          //                                                     .withOpacity(0.0),
          //                                                 Colors.black,
          //                                               ],
          //                                             )),
          //                                       ),
          //                                       const Padding(
          //                                         padding: EdgeInsets.only(
          //                                             right: 160, bottom: 5.0),
          //                                         child: Text(
          //                                           'Music celebration',
          //                                           textAlign: TextAlign.start,
          //                                           style: TextStyle(
          //                                               color: Colors.white),
          //                                         ),
          //                                       ),
          //                                     ]),
          //                               ),
          //                             ]),
          //                       )),
          //                 ],
          //               ),
          //               const SizedBox(
          //                 //---------------------- padding right --------------------//
          //                 width: 5,
          //               ),
          //               Column(
          //                 //----------------------------------Vertical boxes--------------------------//
          //                 children: [
          //                   SizedBox(
          //                       height: 220,
          //                       width: 140,
          //                       child: Container(
          //                         decoration: BoxDecoration(
          //                           borderRadius: const BorderRadius.all(
          //                               Radius.circular(5.0)),
          //                           color: Colors.purple.shade50,
          //                         ),
          //                         child: Column(
          //                             mainAxisAlignment:
          //                                 MainAxisAlignment.center,
          //                             children: [
          //                               InkWell(
          //                                 splashColor: Colors.white,
          //                                 onTap: () {},
          //                                 child: Stack(
          //                                     alignment: AlignmentDirectional
          //                                         .bottomCenter,
          //                                     children: [
          //                                       ClipRRect(
          //                                         borderRadius:
          //                                             const BorderRadius.all(
          //                                                 Radius.circular(5.0)),
          //                                         child: Image.asset(
          //                                             'assets/images/pexels-ben-kirby-10901842.jpg',
          //                                             fit: BoxFit.cover,
          //                                             width: 180.0,
          //                                             height: 220.0),
          //                                       ),
          //                                       Container(
          //                                         height: 220.0,
          //                                         decoration: BoxDecoration(
          //                                             borderRadius:
          //                                                 const BorderRadius
          //                                                         .all(
          //                                                     Radius.circular(
          //                                                         5.0)),
          //                                             color: Colors.black,
          //                                             gradient: LinearGradient(
          //                                               begin: FractionalOffset
          //                                                   .center,
          //                                               end: FractionalOffset
          //                                                   .bottomCenter,
          //                                               colors: [
          //                                                 Colors.grey
          //                                                     .withOpacity(0.0),
          //                                                 Colors.black,
          //                                               ],
          //                                             )),
          //                                       ),
          //                                       const Padding(
          //                                         padding: EdgeInsets.only(
          //                                             bottom: 5.0),
          //                                         child: Text(
          //                                           'Chinatown Events',
          //                                           style: TextStyle(
          //                                               color: Colors.white),
          //                                         ),
          //                                       ),
          //                                     ]),
          //                               ),
          //                             ]),
          //                       )),
          //                 ],
          //               ),
          //               const SizedBox(
          //                 //---------------------- padding right --------------------//
          //                 width: 5,
          //               ),
          //               Column(
          //                 //----------------------------------Horiz boxes--------------------------//
          //                 children: [
          //                   SizedBox(
          //                       height: 110,
          //                       width: 140,
          //                       child: Container(
          //                         decoration: BoxDecoration(
          //                           borderRadius: const BorderRadius.all(
          //                               Radius.circular(5.0)),
          //                           color: Colors.purple.shade50,
          //                         ),
          //                         child: Column(
          //                             mainAxisAlignment:
          //                                 MainAxisAlignment.center,
          //                             children: [
          //                               InkWell(
          //                                 splashColor: Colors.white,
          //                                 onTap: () {},
          //                                 child: Stack(
          //                                     alignment: AlignmentDirectional
          //                                         .bottomCenter,
          //                                     children: [
          //                                       ClipRRect(
          //                                         borderRadius:
          //                                             const BorderRadius.all(
          //                                                 Radius.circular(5.0)),
          //                                         child: Image.asset(
          //                                             'assets/images/pexels-johnmark-smith-301987.jpg',
          //                                             fit: BoxFit.cover,
          //                                             width: 180.0,
          //                                             height: 110.0),
          //                                       ),
          //                                       Container(
          //                                         height: 110.0,
          //                                         decoration: BoxDecoration(
          //                                             borderRadius:
          //                                                 const BorderRadius
          //                                                         .all(
          //                                                     Radius.circular(
          //                                                         5.0)),
          //                                             color: Colors.black,
          //                                             gradient: LinearGradient(
          //                                               begin: FractionalOffset
          //                                                   .center,
          //                                               end: FractionalOffset
          //                                                   .topCenter,
          //                                               colors: [
          //                                                 Colors.grey
          //                                                     .withOpacity(0.0),
          //                                                 Colors.black,
          //                                               ],
          //                                             )),
          //                                       ),
          //                                       const Padding(
          //                                         padding: EdgeInsets.only(
          //                                             bottom: 85.0),
          //                                         child: Text(
          //                                           'Science Lecture',
          //                                           style: TextStyle(
          //                                               color: Colors.white),
          //                                         ),
          //                                       ),
          //                                     ]),
          //                               ),
          //                             ]),
          //                       )),
          //                   const SizedBox(
          //                     height: 5,
          //                   ),
          //                   SizedBox(
          //                       height: 105,
          //                       width: 140,
          //                       child: Container(
          //                         decoration: BoxDecoration(
          //                           borderRadius: const BorderRadius.all(
          //                               Radius.circular(5.0)),
          //                           color: Colors.purple.shade50,
          //                         ),
          //                         child: Column(
          //                             mainAxisAlignment:
          //                                 MainAxisAlignment.center,
          //                             children: [
          //                               InkWell(
          //                                 splashColor: Colors.white,
          //                                 onTap: () {},
          //                                 child: Stack(
          //                                     alignment: AlignmentDirectional
          //                                         .bottomCenter,
          //                                     children: [
          //                                       ClipRRect(
          //                                         borderRadius:
          //                                             const BorderRadius.all(
          //                                                 Radius.circular(5.0)),
          //                                         child: Image.asset(
          //                                             'assets/images/pexels-jonathan-petersson-399610.jpg',
          //                                             fit: BoxFit.cover,
          //                                             width: 180.0,
          //                                             height: 105.0),
          //                                       ),
          //                                       Container(
          //                                         height: 105.0,
          //                                         decoration: BoxDecoration(
          //                                             borderRadius:
          //                                                 const BorderRadius
          //                                                         .all(
          //                                                     Radius.circular(
          //                                                         5.0)),
          //                                             color: Colors.black,
          //                                             gradient: LinearGradient(
          //                                               begin: FractionalOffset
          //                                                   .center,
          //                                               end: FractionalOffset
          //                                                   .topCenter,
          //                                               colors: [
          //                                                 Colors.grey
          //                                                     .withOpacity(0.0),
          //                                                 Colors.black,
          //                                               ],
          //                                             )),
          //                                       ),
          //                                       const Padding(
          //                                         padding: EdgeInsets.only(
          //                                             bottom: 85.0),
          //                                         child: Text(
          //                                           'National Day',
          //                                           style: TextStyle(
          //                                               color: Colors.white),
          //                                         ),
          //                                       ),
          //                                     ]),
          //                               ),
          //                             ]),
          //                       )),
          //                 ],
          //               ),
          //               const SizedBox(
          //                 width: 10,
          //               )
          //             ]), // ------------------------End of ListView Elements --------------------------//
          //       ),
          //     ],
          //   ),
          // ),

          // ----------------------------Events--------------------------------------------//
          Expanded(
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  //-----------------------------------------------------Latest Jobs Section --------------------------------------------//
                  height: 160,
                  width: 165,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.purple.shade50,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 40,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.purple.shade50,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Latest Jobs",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.whatshot,
                                      size: 30,
                                      color: Colors.deepPurple.shade500,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              CarouselSlider(
                                items: [
                                  //1st Image of Slider
                                  Container(
                                    margin: const EdgeInsets.all(6.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(),
                                    ),
                                    child: Row(children: [
                                      Expanded(
                                        child: ListTile(
                                          horizontalTitleGap: 2,
                                          leading: Icon(
                                            MdiIcons.google,
                                            size: 30,
                                            color: Colors.deepPurple.shade500,
                                          ),
                                          title: const Text('Google Inc.'),
                                          subtitle:
                                              const Text('Project Manager'),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  //2nd Image of Slider
                                  Container(
                                    margin: const EdgeInsets.all(6.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(),
                                    ),
                                    child: Row(children: [
                                      Expanded(
                                        child: ListTile(
                                          horizontalTitleGap: 2,
                                          leading: Icon(
                                            MdiIcons.facebook,
                                            size: 30,
                                            color: Colors.deepPurple.shade500,
                                          ),
                                          title: const Text('Facebook'),
                                          subtitle: const Text(
                                              'Interaction Designer'),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  //3rd Image of Slider
                                  Container(
                                    margin: const EdgeInsets.all(6.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(),
                                    ),
                                    child: Row(children: [
                                      Expanded(
                                        child: ListTile(
                                          horizontalTitleGap: 2,
                                          leading: Icon(
                                            MdiIcons.youtubeGaming,
                                            size: 30,
                                            color: Colors.deepPurple.shade500,
                                          ),
                                          title: const Text('Youtube'),
                                          subtitle:
                                              const Text('Concept Artist'),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  //4th Image of Slider
                                  Container(
                                    margin: const EdgeInsets.all(6.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(),
                                    ),
                                    child: Row(children: [
                                      Expanded(
                                        child: ListTile(
                                          horizontalTitleGap: 2,
                                          leading: Icon(
                                            MdiIcons.spotify,
                                            size: 30,
                                            color: Colors.deepPurple.shade500,
                                          ),
                                          title: const Text('Spotify Inc.'),
                                          subtitle: const Text('Web Designer'),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  //5th Image of Slider
                                  Container(
                                    margin: const EdgeInsets.all(6.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(),
                                    ),
                                    child: Row(children: [
                                      Expanded(
                                        child: ListTile(
                                          horizontalTitleGap: 2,
                                          leading: Icon(
                                            MdiIcons.ubisoft,
                                            size: 30,
                                            color: Colors.deepPurple.shade500,
                                          ),
                                          title: const Text('Ubisoft'),
                                          subtitle:
                                              const Text('Creative Director'),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ],
                                //Slider Container properties
                                options: CarouselOptions(
                                  height: 120.0,
                                  autoPlay: true,
                                  aspectRatio: 16 / 9,
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  enableInfiniteScroll: true,
                                  autoPlayAnimationDuration:
                                      const Duration(milliseconds: 800),
                                  viewportFraction: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //------------------------------------------------------------End of Latest Job Section -------------------------------------------
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  //------------------------------------------------------------Activities Section -------------------------------------------------------//
                  height: 160,
                  width: 165,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.purple.shade50,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 40,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.purple.shade50,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Activities",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.list_alt,
                                      size: 30,
                                      color: Colors.deepPurple.shade500,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: 110,
                          width: 152,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.white60,
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Oops ... There are no activities',
                                    textAlign: TextAlign.center,
                                  ),
                                ]),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                //------------------------------------------------------------End of Activities Section -------------------------------------------
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          //----------------------------Latest Jobs and Activities ------------------------//
        ],
      ),
      // //----------------------------------------------Home----------------------------------//
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: elementcolor,
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
                              'Look for a job',
                              style: TextStyle(
                                color: Colors.black,
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
                              color: Colors.deepPurple,
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
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 10.0, right: 10.0),
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: TextField(
                                textAlignVertical: TextAlignVertical.center,
                                controller: controller,
                                decoration: InputDecoration(
                                  prefixIcon: IconButton(
                                      onPressed: (){
                                        Navigator.pushNamed(context, '/job_search_result');
                                      },
                                      icon: Icon(Icons.search)),
                                  suffixIcon: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.clear),
                                        onPressed: () {
                                          controller.clear();
                                        },
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.filter_alt),
                                        onPressed: openFilterDialog,
                                      ),
                                    ],
                                  ),
                                  hintText: 'Search...',
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                              'List of jobs that match your account criteria'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 140.0, left: 20.0, right: 20.0, bottom: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade50,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Job Title'),
                            SizedBox(
                              width: 70,
                            ),
                            Text('Company'),
                            SizedBox(
                              width: 70,
                            ),
                            Text('Date'),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        SvgPicture.asset('assets/images/jobs.svg',
                            height: 200, width: 200),
                        const Text(
                          'Search for your opportunity',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
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
      //----------------------------------------------Jobs----------------------------------//
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(
            height: 10,
          ),
        ],
      ),
      //----------------------------------------------Company----------------------------------//
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(
            height: 10,
          ),
        ],
      ),
      //----------------------------------------------Progression----------------------------------//
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(
            height: 10,
          ),
        ],
      ),
      //----------------------------------------------More----------------------------------//
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: pageSelection[selectedPage],
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
        leading: IconButton(
          icon: const Icon(
            Icons.notifications_none,
            size: 25,
          ),
          onPressed: () {
            print('This is Notification page');
          },
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
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: elementcolor,
        ),
        child: BottomNavigationBar(
          currentIndex: selectedPage,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.black87,
          elevation: 20,
          iconSize: 25,
          items: [
            for (final option in options)
              BottomNavigationBarItem(
                icon: Icon(
                  option.icon,
                ),
                label: option.name,
              ),
          ],
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
        ),
      ),
    );
  }
}



