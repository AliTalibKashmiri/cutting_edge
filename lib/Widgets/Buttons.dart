

import 'package:flutter/material.dart';

import 'colors.dart';
// final RaisedButton raisedButton = Color(0xffffffff);


Widget customButton()
{

  return Center(
    child: Container(
      width: 250,
      height:40,
//       decoration: BoxDecoration(
//       gradient: LinearGradient(colors: [Color(0xff5E2727), Color(0xff810304)],
// begin: Alignment.centerLeft,
// end: Alignment.centerRight,
// ),),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),

        ),

        padding: const EdgeInsets.all(8.0),
        disabledColor: buttonColor,
        disabledTextColor: buttonTextColor,
        // onPressed: null,
        child: Text('Get Started'),
        // textColor: buttonTextColor,
      ),
    ),
  );
}
