import 'package:cutting_edge/Widgets/Buttons.dart';
import 'package:cutting_edge/Widgets/TextFormFields.dart';
import 'package:cutting_edge/Widgets/colors.dart';
import 'package:cutting_edge/Widgets/images.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class resetPassword extends StatefulWidget {
  @override
  _resetPasswordState createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Scaffold(
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
                   'Reset Password',
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
                     'Enter email address associated with your account, and we will email you a link to reset your password.',
                     style: TextStyle(
                         color: basicTextColor,
                         fontSize: height / 60,
                         fontWeight: FontWeight.w400),
                   ),
                 ),
               ),
             ),
             SizedBox(height: height/25,),
             Form(child: EmailFormField()),
             GestureDetector(
                 onTap: () {
                   Navigator.pushNamed(context, "confirmNumber");
                 },
                 child: passwordResetButton())
           ],),
        ),
      ),
    );
  }
}
