
import 'package:cutting_edge/Widgets/colors.dart';
import 'package:cutting_edge/Widgets/images.dart';
import 'package:flutter/material.dart';

import 'package:pinput/pin_put/pin_put.dart';

// ignore: camel_case_types
class numberConfirmatoin extends StatefulWidget {
  @override
  _numberConfirmatoinState createState() => _numberConfirmatoinState();
}

class _numberConfirmatoinState extends State<numberConfirmatoin> {


  BoxDecoration _pinPutDecoration = BoxDecoration(
    // color: AppTheme.primaryColor,
    border: Border.all(
      // color: AppTheme.primaryColor
    ),
    borderRadius: BorderRadius.circular(15.0),
  );


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Column(children: [
          SizedBox(height: height/15,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: width/2.8,
                child: Image(
                  image: AssetImage(splashimage),
                  // height: MediaQuery.of(context).size.height / 9,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'Confirm Your Number',
                style: TextStyle(
                    color: redColor,
                    fontSize: height / 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Container(
                width: width/1.3,
                child: Text(
                  'Enter the 4-digit code Cutting Edge just sent to 0303 2525257:',
                  style: TextStyle(
                      color: basicTextColor,
                      fontSize: height / 60,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),


          Container(
            margin: EdgeInsets.fromLTRB(width * .1,
                width * .05, width * .1, width * .05),
            child: PinPut(
              textStyle: TextStyle(
                  color: Colors.black54,
                fontWeight: FontWeight.bold
              ),
              eachFieldWidth: width * .1,
              eachFieldHeight: width * .1,
              separator: SizedBox(
                width: width * .10,
              ),
              fieldsCount: 4,
              submittedFieldDecoration: _pinPutDecoration.copyWith(
                borderRadius: BorderRadius.circular(20.0),
              ),
              // disabledDecoration: ,
              selectedFieldDecoration: _pinPutDecoration,
              followingFieldDecoration: _pinPutDecoration.copyWith(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  color: Colors.black12.withOpacity(1),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'Dont get a number, try again?',
                style: TextStyle(
                    color: basicTextColor,
                    fontSize: height / 60,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],),
      ),
    );
  }
}
