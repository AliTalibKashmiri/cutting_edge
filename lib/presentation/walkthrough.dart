import 'package:cutting_edge/Widgets/Buttons.dart';
import 'package:cutting_edge/Widgets/colors.dart';
import 'package:cutting_edge/Widgets/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WalkThrough extends StatefulWidget {
  WalkThrough({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WalkThrough> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.pinkAccent,
        body: Stack(
          //fit: StackFit.expand,
          children: [
            Container(
                margin: EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(background),
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(
                        Colors.white.withOpacity(0.4), BlendMode.dstATop),
                  ),
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width),
            // background image
            Positioned(
              top: 40,
              left: 30,
              child: Image(
                image: AssetImage(splashimage),
                // height: MediaQuery.of(context).size.height / 15,
              ),
            ),
            Positioned(
              top: height/3.5,
                left: width/6,


                child: Text(
              'Interior Of Beauty Saloon',
              style: TextStyle(
                  color: interiorColor,
                  fontWeight: FontWeight.bold,
                  fontSize: height / 40),
            )),
            Positioned(
                top: height/2.7,
                left: width/7,


                child: Text(
                  'Book one of our Saloon for Hair Cutting',
                  style: TextStyle(
                      color: basicTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: height / 50),
                )),
            Positioned(
              top: height/1.5,
              left: width/5,
              child: GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, "welcome");
                  },
                  child: customButton())
            ),
          ],
        ),
      ),
    );
  }
}
