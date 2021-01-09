/*
 * flutter_design_challenge - view.widget/Login
 *
 * by Matthieu S. at 08-01-21 11:17
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/screens/login/widget/header.dart';
import 'package:flutter_design_challenge/screens/login/widget/login_curve.dart';
import 'package:flutter_design_challenge/screens/login/widget/login_form.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            SizedBox(
              width: double.infinity,
              height: 100,
              child: CustomPaint(
                painter: LoginCurve(),
              ),
            ),
            LoginForm(),
          ],
        ),
      ),
    );
  }

}
