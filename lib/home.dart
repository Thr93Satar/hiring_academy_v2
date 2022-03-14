import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hiring_academy_v2/job_finder.dart';
import 'package:hiring_academy_v2/main.dart';
import 'package:hiring_academy_v2/news.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    int selectedPage = 0;

    final page_selection = [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 3,
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
                            width: 145,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                                color: Colors.purple.shade50,
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "What's New",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Icon(
                                      MdiIcons.newspaperVariantMultipleOutline,
                                      size: 40,
                                      color: Colors.deepPurple.shade500,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pushNamed(context, '/more_news');
                                          },
                                          style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                              Colors.deepPurple.shade500,
                                            ),
                                          ),
                                          child: const Text('See All')),
                                    )
                                  ]),
                            )),
                        Padding(
                          //--------------------------------------------------------------------- First picture in the slider --------------------------------------------//
                          padding: const EdgeInsets.only(left: 150.0),
                          child: SizedBox(
                              height: 160,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: () {
                                          Navigator.pushNamed(context, '/news');
                                        },
                                        child: Stack(
                                            alignment:
                                            AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20.0)),
                                                child: Image.asset(
                                                    'assets/images/pexels-brett-sayles-1426044.png',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 160.0),
                                              ),
                                              Container(
                                                height: 160.0,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(
                                                            20.0)),
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
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    right: 15.0, bottom: 5.0),
                                                child: Text(
                                                  'Life of Videographer',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ),
                        //------------------------------------------------------------------- First picture in the slider ----------------------------//
                        Padding(
                          //-------------------------------------------------------------- Second picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 300.0),
                          child: SizedBox(
                              height: 160,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: () {
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => News()));
                                        },
                                        child: Stack(
                                            alignment:
                                            AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/farhad-ibrahimzade-54dvxsQeQIM-unsplash.jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 160.0),
                                              ),
                                              Container(
                                                height: 160.0,
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
                                    ]),
                              )),
                        ),
                        //------------------------------------------------------------ second picture in the slider ---------------------------------//
                        Padding(
                          //------------------------------------------------------ third picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 450.0),
                          child: SizedBox(
                              height: 160,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: () {
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => News()));
                                        },
                                        child: Stack(
                                            alignment:
                                            AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/tim-mossholder-GOMhuCj-O9w-unsplash.jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 160.0),
                                              ),
                                              Container(
                                                height: 160.0,
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
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    right: 15.0, bottom: 5.0),
                                                child: Text(
                                                  'Creative Ideas',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ),
                        //--------------------------------------------------------------------- third picture in the slider ---------------------------------//
                        Padding(
                          //---------------------------------------------------------------- forth picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 600.0),
                          child: SizedBox(
                              height: 160,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: () {
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => News()));
                                        },
                                        child: Stack(
                                            alignment:
                                            AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/olena-sergienko-dIMJWLx1YbE-unsplash.jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 160.0),
                                              ),
                                              Container(
                                                height: 160.0,
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
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    right: 15.0, bottom: 5.0),
                                                child: Text(
                                                  'Life and Technology',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ),
                        //--------------------------------------------------------------------- forth picture in the slider ---------------------------------//
                        Padding(
                          //---------------------------------------------------------------- fifth picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 750.0),
                          child: SizedBox(
                              height: 160,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: () {
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => News()));
                                        },
                                        child: Stack(
                                            alignment:
                                            AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/pexels-pixabay-260367.jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 160.0),
                                              ),
                                              Container(
                                                height: 160.0,
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
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    right: 15.0, bottom: 5.0),
                                                child: Text(
                                                  'Fighting Flames',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ]),
                              )),
                        ),
                        //---------------------------------------------------------------- fifth picture in the slider ---------------------------------//
                        Padding(
                          //----------------------------------------------------------- Sixth picture in the slider ---------------------------------//
                          padding: const EdgeInsets.only(left: 900.0),
                          child: SizedBox(
                              height: 160,
                              width: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.white,
                                        onTap: () {
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => News()));
                                        },
                                        child: Stack(
                                            alignment:
                                            AlignmentDirectional.bottomCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                    'assets/images/pexels-energepiccom-175045 (1).jpg',
                                                    fit: BoxFit.cover,
                                                    width: 180.0,
                                                    height: 160.0),
                                              ),
                                              Container(
                                                height: 160.0,
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
                                              const Padding(
                                                padding:
                                                EdgeInsets.only(bottom: 5.0),
                                                child: Text(
                                                  'New Contracts',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              //----------------------------------------------------------- Sixth picture in the slider ---------------------------------//
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
              const SizedBox(
                width: 10,
              )
            ]),
          ),
          // ----------------------------What's New ------------------------
          Expanded(
            flex: 4,
            child: Row(
              children: [
                const SizedBox(
                  //---------------------- padding right --------------------//
                  width: 10,
                ),
                Expanded(
                  child: ListView(
                    //------------------------- Listview Start --------------------//
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          //----------------------------------Vertical box--------------------------//
                          children: [
                            SizedBox(
                              height: 220,
                              width: 120,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                                  color: Colors.purple.shade50,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const Text(
                                        "Events",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Icon(
                                        MdiIcons.satelliteUplink,
                                        size: 40,
                                        color: Colors.deepPurple.shade500,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 40.0),
                                        child: ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(
                                                Colors.deepPurple.shade500,
                                              ),
                                            ),
                                            child: const Text('See All')),
                                      )
                                    ]),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          //---------------------- padding right --------------------//
                          width: 5,
                        ),
                        Column(
                          //----------------------------------Horiz boxes--------------------------//
                          children: [
                            SizedBox(
                                height: 105,
                                width: 140,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0)),
                                    color: Colors.purple.shade50,
                                  ),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.white,
                                          onTap: () {},
                                          child: Stack(
                                              alignment: AlignmentDirectional
                                                  .bottomCenter,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5.0)),
                                                  child: Image.asset(
                                                      'assets/images/pexels-luis-quintero-2774556.jpg',
                                                      fit: BoxFit.cover,
                                                      width: 180.0,
                                                      height: 105.0),
                                                ),
                                                Container(
                                                  height: 105.0,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              5.0)),
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
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0),
                                                  child: Text(
                                                    'UX/UI Sessions',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ]),
                                )),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                                height: 110,
                                width: 140,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0)),
                                    color: Colors.purple.shade50,
                                  ),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.white,
                                          onTap: () {},
                                          child: Stack(
                                              alignment: AlignmentDirectional
                                                  .bottomCenter,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5.0)),
                                                  child: Image.asset(
                                                      'assets/images/pexels-matheus-bertelli-3321793.jpg',
                                                      fit: BoxFit.cover,
                                                      width: 180.0,
                                                      height: 110.0),
                                                ),
                                                Container(
                                                  height: 110.0,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              5.0)),
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
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0),
                                                  child: Text(
                                                    'General Talk',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ]),
                                )),
                          ],
                        ),
                        const SizedBox(
                          //---------------------- padding right --------------------//
                          width: 5,
                        ),
                        Column(
                          //----------------------------------Vertical boxes--------------------------//
                          children: [
                            SizedBox(
                                height: 220,
                                width: 140,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0)),
                                    color: Colors.purple.shade50,
                                  ),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.white,
                                          onTap: () {},
                                          child: Stack(
                                              alignment: AlignmentDirectional
                                                  .bottomCenter,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5.0)),
                                                  child: Image.asset(
                                                      'assets/images/pexels-antoni-shkraba-4348403.jpg',
                                                      fit: BoxFit.cover,
                                                      width: 180.0,
                                                      height: 220.0),
                                                ),
                                                Container(
                                                  height: 220.0,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              5.0)),
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
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0),
                                                  child: Text(
                                                    'Talking Tech Event',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ]),
                                )),
                          ],
                        ),
                        const SizedBox(
                          //---------------------- padding right --------------------//
                          width: 5,
                        ),
                        Column(
                          //----------------------------------Horiz boxes--------------------------//
                          children: [
                            Row(
                              //----------------------------------Horiz boxes--------------------------//
                              children: [
                                SizedBox(
                                    height: 105,
                                    width: 140,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5.0)),
                                        color: Colors.purple.shade50,
                                      ),
                                      child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.white,
                                              onTap: () {},
                                              child: Stack(
                                                  alignment: AlignmentDirectional
                                                      .bottomCenter,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              5.0)),
                                                      child: Image.asset(
                                                          'assets/images/pexels-josh-sorenson-976866.jpg',
                                                          fit: BoxFit.cover,
                                                          width: 180.0,
                                                          height: 105.0),
                                                    ),
                                                    Container(
                                                      height: 105.0,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  5.0)),
                                                          color: Colors.black,
                                                          gradient:
                                                          LinearGradient(
                                                            begin:
                                                            FractionalOffset
                                                                .center,
                                                            end: FractionalOffset
                                                                .bottomCenter,
                                                            colors: [
                                                              Colors.grey
                                                                  .withOpacity(
                                                                  0.0),
                                                              Colors.black,
                                                            ],
                                                          )),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 5.0),
                                                      child: Text(
                                                        'ScoreArena Festival',
                                                        style: TextStyle(
                                                            color: Colors.white),
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                          ]),
                                    )),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                    height: 105,
                                    width: 140,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5.0)),
                                        color: Colors.purple.shade50,
                                      ),
                                      child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.white,
                                              onTap: () {},
                                              child: Stack(
                                                  alignment: AlignmentDirectional
                                                      .bottomCenter,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              5.0)),
                                                      child: Image.asset(
                                                          'assets/images/pexels-stefan-lorentz-668137.jpg',
                                                          fit: BoxFit.cover,
                                                          width: 180.0,
                                                          height: 105.0),
                                                    ),
                                                    Container(
                                                      height: 105.0,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  5.0)),
                                                          color: Colors.black,
                                                          gradient:
                                                          LinearGradient(
                                                            begin:
                                                            FractionalOffset
                                                                .center,
                                                            end: FractionalOffset
                                                                .topCenter,
                                                            colors: [
                                                              Colors.grey
                                                                  .withOpacity(
                                                                  0.0),
                                                              Colors.black,
                                                            ],
                                                          )),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 85.0),
                                                      child: Text(
                                                        'Reading Day',
                                                        style: TextStyle(
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            color: Colors.white),
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                          ]),
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              //----------------------------------HorizBox--------------------------//
                                height: 110,
                                width: 285,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0)),
                                    color: Colors.purple.shade50,
                                  ),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.white,
                                          onTap: () {},
                                          child: Stack(
                                              alignment: AlignmentDirectional
                                                  .bottomCenter,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5.0)),
                                                  child: Image.asset(
                                                      'assets/images/pexels-teddy-yang-2263436.jpg',
                                                      fit: BoxFit.cover,
                                                      width: 285.0,
                                                      height: 110.0),
                                                ),
                                                Container(
                                                  height: 110.0,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              5.0)),
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
                                                  padding: EdgeInsets.only(
                                                      right: 160, bottom: 5.0),
                                                  child: Text(
                                                    'Music celebration',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ]),
                                )),
                          ],
                        ),
                        const SizedBox(
                          //---------------------- padding right --------------------//
                          width: 5,
                        ),
                        Column(
                          //----------------------------------Vertical boxes--------------------------//
                          children: [
                            SizedBox(
                                height: 220,
                                width: 140,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0)),
                                    color: Colors.purple.shade50,
                                  ),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.white,
                                          onTap: () {},
                                          child: Stack(
                                              alignment: AlignmentDirectional
                                                  .bottomCenter,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5.0)),
                                                  child: Image.asset(
                                                      'assets/images/pexels-ben-kirby-10901842.jpg',
                                                      fit: BoxFit.cover,
                                                      width: 180.0,
                                                      height: 220.0),
                                                ),
                                                Container(
                                                  height: 220.0,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              5.0)),
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
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0),
                                                  child: Text(
                                                    'Chinatown Events',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ]),
                                )),
                          ],
                        ),
                        const SizedBox(
                          //---------------------- padding right --------------------//
                          width: 5,
                        ),
                        Column(
                          //----------------------------------Horiz boxes--------------------------//
                          children: [
                            SizedBox(
                                height: 110,
                                width: 140,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0)),
                                    color: Colors.purple.shade50,
                                  ),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.white,
                                          onTap: () {},
                                          child: Stack(
                                              alignment: AlignmentDirectional
                                                  .bottomCenter,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5.0)),
                                                  child: Image.asset(
                                                      'assets/images/pexels-johnmark-smith-301987.jpg',
                                                      fit: BoxFit.cover,
                                                      width: 180.0,
                                                      height: 110.0),
                                                ),
                                                Container(
                                                  height: 110.0,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              5.0)),
                                                      color: Colors.black,
                                                      gradient: LinearGradient(
                                                        begin: FractionalOffset
                                                            .center,
                                                        end: FractionalOffset
                                                            .topCenter,
                                                        colors: [
                                                          Colors.grey
                                                              .withOpacity(0.0),
                                                          Colors.black,
                                                        ],
                                                      )),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 85.0),
                                                  child: Text(
                                                    'Science Lecture',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ]),
                                )),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                                height: 105,
                                width: 140,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0)),
                                    color: Colors.purple.shade50,
                                  ),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.white,
                                          onTap: () {},
                                          child: Stack(
                                              alignment: AlignmentDirectional
                                                  .bottomCenter,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5.0)),
                                                  child: Image.asset(
                                                      'assets/images/pexels-jonathan-petersson-399610.jpg',
                                                      fit: BoxFit.cover,
                                                      width: 180.0,
                                                      height: 105.0),
                                                ),
                                                Container(
                                                  height: 105.0,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              5.0)),
                                                      color: Colors.black,
                                                      gradient: LinearGradient(
                                                        begin: FractionalOffset
                                                            .center,
                                                        end: FractionalOffset
                                                            .topCenter,
                                                        colors: [
                                                          Colors.grey
                                                              .withOpacity(0.0),
                                                          Colors.black,
                                                        ],
                                                      )),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 85.0),
                                                  child: Text(
                                                    'National Day',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ]),
                                )),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ]), // ------------------------End of ListView Elements --------------------------//
                ),
              ],
            ),
          ),
          // ----------------------------Events ------------------------
          Expanded(
            flex: 3,
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
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
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
                                          subtitle: const Text('Project Manager'),
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
                                          subtitle:
                                          const Text('Interaction Designer'),
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
                                          subtitle: const Text('Concept Artist'),
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
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
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
                                children:[ Text('Oops ... There are no activities',textAlign: TextAlign.center,),
                                ]
                            ),
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
          // ----------------------------Latest Jobs and Activities ------------------------
          const SizedBox(
            height: 5,
          ),
        ],
      ), //------------------Home-------------------
      Jobs(), //------------------Jobs-------------------
      // Company(),
      // Progression(),
      // More(),
    ];
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
                }
             )],
              ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: elementcolor,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
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
            onTap: (index) {
              setState(() {
                selectedPage = index;
              });
            },
          ),
        ),
        body: page_selection[selectedPage]);
  }
}
