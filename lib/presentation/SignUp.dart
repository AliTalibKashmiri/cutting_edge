import 'package:cutting_edge/Widgets/Buttons.dart';
import 'package:cutting_edge/Widgets/TextFormFields.dart';
import 'package:cutting_edge/Widgets/colors.dart';
import 'package:cutting_edge/Widgets/images.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class signUp extends StatefulWidget {
  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage(background),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: height / 6.5,
                left: width/70,
                child: Container(
                  color: Colors.white,
                  width: width/1,
                  // height: height/2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height / 50,
                      ),
                      Center(
                        child: Text(
                          'Welcome To',
                          style: TextStyle(
                              color: redColor,
                              fontSize: height / 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),

                      Center(
                        child: Text(
                          ' Your Personalized Profile ',
                          style: TextStyle(
                              color: basicTextColor,
                              fontSize: height / 50,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: height / 60,
                      ),
                      Form(
                        child: Column(
                          children: [
                            FirstNameField(),
                            LastNameField(),
                            EmailFormField(),
                            passwordField(),
                            passwordField()

                          ],
                        ),
                      ),
                   
                      SizedBox(
                        height: height / 60,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "login");
                          },
                          child: signUpButton()),
                      SizedBox(
                        height: height / 20,
                      ), //
                      Center(
                        child: Text(
                          'or via Social Media',
                          style: TextStyle(
                              color: basicTextColor,
                              fontSize: height / 50,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        spacing: 8,
                        children: [
                          Image(
                            image: AssetImage("Images/facebook.png"),
                            height: 30,
                          ),
                          Image(
                            image: AssetImage("Images/twitter.png"),
                            height: 30,
                          ),
                          Image(
                            image: AssetImage("Images/instagram.png"),
                            height: 30,
                          ),
                          Image(
                            image: AssetImage("Images/google+.png"),
                            height: 30,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an have an account? ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: basicTextColor,
                                  fontSize: height / 70),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "login");
                              },
                              child: Text(
                                'Login Now',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: redColor,
                                    fontSize: height / 70),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'By signing up, you are agree with our ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: basicTextColor,
                                  fontSize: height / 70),
                            ),
                            Text(
                              'Terms & Conditions',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: redColor,
                                  fontSize: height / 70),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
