import 'package:cutting_edge/Widgets/Buttons.dart';
import 'package:cutting_edge/Widgets/colors.dart';
import 'package:cutting_edge/Widgets/images.dart';
import 'package:flutter/material.dart';

class welcomePage extends StatefulWidget {
  @override
  _welcomePageState createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: height/10,),
              Center(
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      color: redColor,
                      fontSize: height /30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: height/70,),
              Center(
                child: Text(
                  'To Your Personalized Profile',
                  style: TextStyle(
                      color: basicTextColor,
                      fontSize: height /50,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Image(
                image: AssetImage(splashimage),
                // height: MediaQuery.of(context).size.height / 15,
              ),
              SizedBox(height: height/40,),
              GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, "welcome");
                  },
                  child: customButton()),
              SizedBox(height: height/70,),
              GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, "welcome");
                  },
                  child: customButton()),
              SizedBox(height: height/30,),
              Center(
                child: Text(
                  'Follow Us',
                  style: TextStyle(
                      color: redColor,
                      fontSize: height /60,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: height/30,),
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
              SizedBox(height: height/50,),
              Center(
                child: Text(
                  'By creating an account, you agree to our',
                  style: TextStyle(
                      color: basicTextColor,
                      fontSize: height /60,
                      fontWeight: FontWeight.w400),
                ),
              ),
            //  SizedBox(height: height/70,),
              RichText(
                text: TextSpan(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(text: "Terms Of Service ", style: TextStyle(color: redColor)),
                      TextSpan(text: "and ",style: TextStyle(color: basicTextColor)),
                      TextSpan(text: "Privacy Policy ",style: TextStyle(color: redColor)),

                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
