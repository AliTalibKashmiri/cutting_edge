import 'package:flutter/material.dart';

import 'colors.dart';
// ignore: missing_return
Widget EmailFormField()
{

 return Container(
   width: 340,
   height: 70,
   child: (
   TextFormField(
     keyboardType: TextInputType.emailAddress,
     decoration: InputDecoration(
         suffixIcon: Icon(
           Icons.email_outlined,
           color: Colors.black12,
         ),
         contentPadding:
         const EdgeInsets.all(15.0),
         focusedBorder: OutlineInputBorder(
           borderSide: BorderSide(color: Colors.black12),
           borderRadius: BorderRadius.circular(30),
         ),

         enabledBorder: UnderlineInputBorder(
           borderSide: BorderSide(color: Colors.black12),
           borderRadius: BorderRadius.circular(25.7),
         ),
  filled: true,
         hintStyle: new TextStyle(color: basicTextColor),
         hintText: "Email",
         fillColor: Colors.white70),


   )
   )
 );
}

Widget FirstNameField()
{

  return Container(
      width: 340,
      height: 70,
      child: (
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                // suffixIcon: Icon(
                //   Icons.email_outlined,
                //   color: Colors.black12,
                // ),
                contentPadding:
                const EdgeInsets.all(15.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.circular(30),
                ),

                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.circular(25.7),
                ),
                filled: true,
                hintStyle: new TextStyle(color: basicTextColor),
                hintText: "Enter First Name",
                fillColor: Colors.white70),


          )
      )
  );
}

Widget LastNameField()
{

  return Container(
      width: 340,
      height: 70,
      child: (
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                // suffixIcon: Icon(
                //   Icons.email_outlined,
                //   color: Colors.black12,
                // ),
                contentPadding:
                const EdgeInsets.all(15.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.circular(30),
                ),

                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.circular(25.7),
                ),
                filled: true,
                hintStyle: new TextStyle(color: basicTextColor),
                hintText: "Enter Last Name",
                fillColor: Colors.white70),


          )
      )
  );
}


class passwordField extends StatefulWidget {




  @override
  _passwordFieldState createState() => _passwordFieldState();
}

class _passwordFieldState extends State<passwordField> {

  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
    width: 340,
    height: 70,
    child: (
    TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: _obscureText,
    decoration: InputDecoration(
    suffixIcon: IconButton(
      icon: Icon(
      Icons.remove_red_eye_outlined,
      color: Colors.black12,
      ),
      onPressed:_toggle
    ),
    contentPadding:
    const EdgeInsets.all(15.0),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black12),
    borderRadius: BorderRadius.circular(30),
    ),

    enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black12),
    borderRadius: BorderRadius.circular(25.7),
    ),

    filled: true,
hintStyle: new TextStyle(color: basicTextColor),
hintText: "Password",
fillColor: Colors.white70),


)
)
);
  }
}

