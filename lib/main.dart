import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hiring_academy_v2/Notifications.dart';
import 'package:hiring_academy_v2/Recover_account.dart';
import 'package:hiring_academy_v2/close_job_applications.dart';
import 'package:hiring_academy_v2/create_account.dart';
import 'package:hiring_academy_v2/create_job_application.dart';
import 'package:hiring_academy_v2/edit_job_application.dart';
import 'package:hiring_academy_v2/edit_job_list.dart';
import 'package:hiring_academy_v2/event.dart';
import 'package:hiring_academy_v2/home_signed_in.dart';
import 'package:hiring_academy_v2/inside_settings.dart';
import 'package:hiring_academy_v2/job_created_successfully.dart';
import 'package:hiring_academy_v2/job_search_result.dart';
import 'package:hiring_academy_v2/more_events.dart';
import 'package:hiring_academy_v2/news.dart';
import 'package:hiring_academy_v2/otp_confirmation.dart';
import 'package:hiring_academy_v2/otp_confirmation_reg.dart';
import 'package:hiring_academy_v2/otp_page.dart';
import 'package:hiring_academy_v2/password_reset.dart';
import 'package:hiring_academy_v2/password_reset_2.dart';
import 'package:hiring_academy_v2/registeration.dart';
import 'package:hiring_academy_v2/report_section.dart';
import 'package:hiring_academy_v2/splash.dart';
import 'package:hiring_academy_v2/submitted_application.dart';
import 'package:hiring_academy_v2/view_application.dart';
import 'package:hiring_academy_v2/view_job_list.dart';
import 'package:hiring_academy_v2/view_resume.dart';
// -------------------------------------------App-Main-Pages----------------------------------//
import 'forgot_password.dart';
import 'home.dart';
import 'login.dart';
import 'more_news.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
      title: 'Hiring Academy',
      theme: ThemeData(
        primarySwatch: themecolor,
        fontFamily: 'cabin',
        scaffoldBackgroundColor: bodycolor,
      ),
      initialRoute: '/',
      routes: {
        '/notifications':(context) => const Notifications(),
        '/login': (context) => const Login(),
        '/home_signed_in': (context) => const HomeSI(),
        '/news': (context) => const News(),
        '/event': (context) => const Event(),
        '/more_news': (context) => const MoreN(),
        '/more_events': (context) => const MoreE(),
        '/forgot_password': (context) => const Password(),
        '/password_reset': (context) => const P_reset(),
        '/password_reset_2': (context) => const P_reset_2(),
        '/recover_account': (context) => const RecoverAccount(),
        '/otp_page': (context) => const OTP(),
        '/otp_confirmation_page': (context) => const OTPCon(),
        '/registration': (context) => const Register(),
        '/create_account': (context) => const Account(),
        '/otp_confirmation_reg': (context) => const OTPConr(),
        '/job_search_result': (context) => const SearchResult(),
        '/view_application': (context) => const ViewApplication(),
        '/submitted_application': (context) => const SubmittedApp(),
        '/create_job_application': (context) => const CreateApplication(),
        '/job_created_successfully': (context) => const JobCreatedSuccessfully(),
        '/edit_job_list': (context) => const EditJobList(),
        '/edit_job_application': (context) => const EditJobApplication(),
        '/view_job_list': (context) => const ViewJobList(),
        '/view_resume': (context) => const ViewResume(),
        '/close_job_applications': (context) => const CloseJobApplications(),
        '/more_settings': (context) => const InsideSettings(),
        '/more_report': (context) => const Report(),
      },
      locale: const Locale('en'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [const Locale('en'), const Locale('ar')],
    );
  }
}

// -------------------------------------Color Swatch----------------------------

Map<int, Color> color = {
  50: const Color.fromRGBO(72, 61, 103, .1),
  100: const Color.fromRGBO(72, 61, 103, .2),
  200: const Color.fromRGBO(72, 61, 103, .3),
  300: const Color.fromRGBO(72, 61, 103, .4),
  400: const Color.fromRGBO(72, 61, 103, .5),
  500: const Color.fromRGBO(72, 61, 103, .6),
  600: const Color.fromRGBO(72, 61, 103, .7),
  700: const Color.fromRGBO(72, 61, 103, .8),
  800: const Color.fromRGBO(72, 61, 103, .9),
  900: const Color.fromRGBO(72, 61, 103, 1),
};
MaterialColor bodycolor = MaterialColor(0xFF483D67, color);

Map<int, Color> color1 = {
  50: const Color.fromRGBO(108, 90, 170, .1),
  100: const Color.fromRGBO(108, 90, 170, .2),
  200: const Color.fromRGBO(108, 90, 170, .3),
  300: const Color.fromRGBO(108, 90, 170, .4),
  400: const Color.fromRGBO(108, 90, 170, .5),
  500: const Color.fromRGBO(108, 90, 170, .6),
  600: const Color.fromRGBO(108, 90, 170, .7),
  700: const Color.fromRGBO(108, 90, 170, .8),
  800: const Color.fromRGBO(108, 90, 170, .9),
  900: const Color.fromRGBO(108, 90, 170, 1),
};
MaterialColor themecolor = MaterialColor(0xFF6C5AAA, color1);

Map<int, Color> color2 = {
  50: const Color.fromRGBO(211, 206, 230, .1),
  100: const Color.fromRGBO(211, 206, 230, .2),
  200: const Color.fromRGBO(211, 206, 230, .3),
  300: const Color.fromRGBO(211, 206, 230, .4),
  400: const Color.fromRGBO(211, 206, 230, .5),
  500: const Color.fromRGBO(211, 206, 230, .6),
  600: const Color.fromRGBO(211, 206, 230, .7),
  700: const Color.fromRGBO(211, 206, 230, .8),
  800: const Color.fromRGBO(211, 206, 230, .9),
  900: const Color.fromRGBO(211, 206, 230, 1),
};

MaterialColor elementcolor = MaterialColor(0xFFD3CEE6, color2);
// -------------------------------------Color Swatch----------------------------



