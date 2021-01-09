/*
 * flutter_design_challenge - screens.login.widget/header
 *
 * by Matthieu S. at 08-01-21 15:10
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/constants.dart';
import 'package:flutter_design_challenge/widget/logo.dart';

class Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kPaddingL),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Logo(
            size: 80.0,
            color: kDarkBlue,
          ),
          Text(
            "Welcome to Busble",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: kBlack
            ),
          ),
          SizedBox(height: kSpaceM),
          Text(
            "Lorem ipsum dolores",
            style: TextStyle(
              color: kBlack
            ),
          ),
        ],
      ),
    );
  }

}