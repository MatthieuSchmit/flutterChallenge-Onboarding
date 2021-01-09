/*
 * flutter_design_challenge - screens.login.widget/login_button
 *
 * by Matthieu S. at 08-01-21 15:44
 *
 */

import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final Function onClick;
  final double width;
  final double height;

  LoginButton({
    @required this.backgroundColor,
    @required this.textColor,
    @required this.text,
    @required this.onClick,
    @required this.width,
    this.height = 60.0
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: this.onClick,
      child: Text(
        this.text,
        style: TextStyle(
          color: this.textColor,
          fontSize: 18
        ),
      ),
      color: this.backgroundColor,
      minWidth: this.width,
      height: this.height,
    );
  }

}