import 'package:flutter/material.dart';
import 'package:hiring_academy_v2/building_icons.dart';
import 'package:hiring_academy_v2/main.dart';
import 'package:hiring_academy_v2/progress_icons.dart';


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
                child: const Icon(Icons.cottage_rounded, color: Colors.white,)),),
             BottomNavigationBarItem(
                 label: 'Work',
                 icon: CircleAvatar(
                     maxRadius: 16,
                     minRadius: 15,
                     backgroundColor: Colors.white,
                     child: Icon(Icons.work, color: Colors.deepPurple.shade500,))),
             BottomNavigationBarItem(
                 label: 'Company',
                 icon: CircleAvatar(
                     maxRadius: 16,
                     minRadius: 15,
                     backgroundColor: Colors.white,
                     child: Icon(Icons.apartment_rounded,color: Colors.deepPurple.shade500,))),
             BottomNavigationBarItem(
                 label: 'Progression',
                 icon: CircleAvatar(
                     maxRadius: 16,
                     minRadius: 15,
                     backgroundColor: Colors.white,
                     child: Icon(Icons.donut_small_rounded,color: Colors.deepPurple.shade500,))),
             BottomNavigationBarItem(
                 label: 'More',
                 icon: CircleAvatar(
                     maxRadius: 16,
                     minRadius: 15,
                     backgroundColor: Colors.white,
                     child: Icon(Icons.more_horiz,color: Colors.deepPurple.shade500,))),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(children: [
            const SizedBox(
              width: 10,
            ),
            Stack(
              children: [
                SizedBox(
                    height: 180,
                    width: 180,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        color: Colors.purple.shade50,
                      ),
                      child: Column(children: const [
                        Text(
                          "What's New",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ]),
                    ))
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
