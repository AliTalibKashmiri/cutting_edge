import 'package:cutting_edge/presentation/SignUp.dart';
import 'package:cutting_edge/presentation/home.dart';
import 'package:cutting_edge/presentation/login.dart';
import 'package:cutting_edge/presentation/numberConfirmation.dart';
import 'package:cutting_edge/presentation/resetPassword.dart';
import 'package:cutting_edge/presentation/splash.dart';
import 'package:cutting_edge/presentation/walkthrough.dart';
import 'package:flutter/material.dart';

import 'presentation/welcome.dart';

void main() => runApp(MyApp());


var routes = <String, WidgetBuilder>{
  "welcome": (BuildContext context) => welcomePage(),
  'WalkThrough': (BuildContext context) => new WalkThrough(),
  'login': (BuildContext context) => new login(),
  'signUp': (BuildContext context) => new signUp(),
  'forgotPassword': (BuildContext context) => new resetPassword(),
  'confirmNumber': (BuildContext context) => new numberConfirmatoin(),
  'homePage': (BuildContext context) => new home()
  // "/intro": (BuildContext context) => IntroScreen(),
};



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SplashScreen(),
      routes: routes
    );
  }
}
