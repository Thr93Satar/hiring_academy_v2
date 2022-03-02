import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// -------------------------------------------App-Main-Pages-----------------------
import 'Home.dart';
import 'Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hiring Academy',
      theme: ThemeData(
        fontFamily: 'Cabin',
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/login':(context) => const Login(),
      },
      locale: const Locale('en'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [const Locale('en'),const Locale('ar')],



    );
  }
}

// -------------------------------------Color Swatch----------------------------

Map<int, Color> color = {
  50: const Color.fromRGBO(72, 61, 103, .1),
  100: const Color.fromRGBO(72, 61, 103,  .2),
  200: const Color.fromRGBO(72, 61, 103,  .3),
  300: const Color.fromRGBO(72, 61, 103,  .4),
  400: const Color.fromRGBO(72, 61, 103,  .5),
  500: const Color.fromRGBO(72, 61, 103,  .6),
  600: const Color.fromRGBO(72, 61, 103,  .7),
  700: const Color.fromRGBO(72, 61, 103,  .8),
  800: const Color.fromRGBO(72, 61, 103,  .9),
  900: const Color.fromRGBO(72, 61, 103,  1),
};

MaterialColor themecolor = MaterialColor(0xFF551A8B, color);

// -------------------------------------Color Swatch----------------------------



