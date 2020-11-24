import 'package:cutting_edge/Widgets/Buttons.dart';
import 'package:cutting_edge/Widgets/TextFormFields.dart';
import 'package:cutting_edge/Widgets/colors.dart';
import 'package:cutting_edge/Widgets/images.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  String name = 'Sohail Ahmad';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 15.0),
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Container(
                         // color: Colors.whi,
                          width: width/2,
                          height: height/12,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child
                                    : RichText(
                                  text: TextSpan(
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                      children: <TextSpan>[
                                        TextSpan(text: "Hello ", style: TextStyle(color: Color(0xffb5b5b5),
                                            fontSize: height / 40,
                                            fontWeight: FontWeight.w400)),
                                        TextSpan(text: "$name",style: TextStyle(color: Color(0xffb5b5b5),
                                            fontSize: height / 40,
                                            fontWeight: FontWeight.w400)),
                                      ]
                                  ),
                                ),
                              ),

                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(top:8.0),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      'Find Your Barber ',
                                      style: TextStyle(
                                          color: redColor,
                                          fontSize: height / 40,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0, right: 15.0),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(profileImage),
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
