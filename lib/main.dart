import 'package:flutter/material.dart';
import 'package:fooder/pages/home_page.dart';
import 'package:fooder/pages/landing_page.dart';
import 'package:fooder/pages/login_page.dart';
import 'package:fooder/pages/signup_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fooder',
      home: LandingPage(),
      routes: <String, WidgetBuilder>{
        "login": (BuildContext context) => new LoginPage(),
        "signup": (BuildContext context) => new SignUpPage(),
        "home": (BuildContext context) => new HomePage(),
      },
    );
  }
}
