import 'dart:async';
import 'package:cutting_edge/Widgets/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(milliseconds: 5000);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('WalkThrough');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return new Scaffold(
      backgroundColor: Color(0xffffffff),
      body: new Container(

        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              SizedBox(height: height/3,),
              Container(
//              decoration: BoxDecoration(
//                  color: Colors.transparent
//              ),
                child:
                Image.asset(splashimage,
                  height: height/3,),

              ),
              SizedBox(height: height/15),


            ],
          ),
        ),
      ),
    );
  }
}
