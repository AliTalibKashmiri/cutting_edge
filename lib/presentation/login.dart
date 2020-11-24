import 'package:cutting_edge/Widgets/Buttons.dart';
import 'package:cutting_edge/Widgets/TextFormFields.dart';
import 'package:cutting_edge/Widgets/colors.dart';
import 'package:cutting_edge/Widgets/images.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
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
                top: height / 2.5,
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
                          'Welcome Back',
                          style: TextStyle(
                              color: redColor,
                              fontSize: height / 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),

                      Center(
                        child: Text(
                          'Login to Your Account',
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
                            EmailFormField(),
                            passwordField(),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, right: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "forgotPassword");
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: basicTextColor,
                                  fontSize: height / 50,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ), // fogot text
                      SizedBox(
                        height: height / 60,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "homePage");
                          },
                          child: loginButton()),
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
                              'Don’t have an account? ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: basicTextColor,
                                  fontSize: height / 70),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "signUp");
                              },
                              child: Text(
                                'SignUp Now',
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
