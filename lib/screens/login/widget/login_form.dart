/*
 * flutter_design_challenge - screens.login.widget/form
 *
 * by Matthieu S. at 08-01-21 15:29
 *
 */
 
import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/constants.dart';
import 'package:flutter_design_challenge/screens/login/widget/input_field.dart';
import 'package:flutter_design_challenge/screens/login/widget/login_button.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kPaddingS),
      padding: EdgeInsets.all(kPaddingS),
      child: Column(
        children: [
          InputField(
            hintText: "Username or Email",
            logo: Icons.person,
          ),
          SizedBox(height: kSpaceM),
          InputField(
            hintText: "Password",
            logo: Icons.lock,
            obscureText: true
          ),
          SizedBox(height: kSpaceM),
          LoginButton(
            text: "Login to continue",
            backgroundColor: kBlue,
            textColor: kWhite,
            width: MediaQuery.of(context).size.width - 2 * kPaddingS,
            onClick: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: kSpaceL),
          LoginButton(
            text: "Login with Google",
            backgroundColor: kWhite,
            textColor: kBlack,
            width: MediaQuery.of(context).size.width - 2 * kPaddingS,
            onClick: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: kSpaceS),
          LoginButton(
            text: "Create a Busble Account",
            backgroundColor: kBlack,
            textColor: kWhite,
            width: MediaQuery.of(context).size.width - 2 * kPaddingS,
            onClick: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
  
}