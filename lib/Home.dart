import 'package:flutter/material.dart';
import 'package:hiring_academy_v2/main.dart';

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
        title: const Text('Hiring Academy', style: TextStyle(fontFamily: 'Cabin'),),
        leading: IconButton(
          icon: const Icon(Icons.notifications_none, size: 25,),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
            print('This is Notification page');
          },
        ),
        actions: [
          IconButton(
              onPressed: (){print('Hii i am your account');},
              icon: const Icon(Icons.account_circle, size: 25,))
        ],
      ),
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
              canvasColor: themecolor,
              ),
          child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items:  const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: CircleAvatar(
                maxRadius: 16,
                minRadius: 15,
                backgroundColor: Colors.white,
                child: Icon(
                    Icons.cottage,
                  color: Colors.deepPurple,
                ),
              ),
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(label: 'Work',icon: Icon(Icons.work)),
          BottomNavigationBarItem(label: 'Company',icon: Icon(Icons.business)),
          BottomNavigationBarItem(label: 'Progression',icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'More',icon: Icon(Icons.more_horiz)),
        ],
      ),
    ));
  }
}