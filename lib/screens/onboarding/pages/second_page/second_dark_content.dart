/*
 * flutter_design_challenge - screens.onboarding.pages.second_page/second_dark_content
 *
 * by Matthieu S. at 08-01-21 14:36
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/constants.dart';

class SecondDarkContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 80),
        child: Icon(
          Icons.computer,
          color: kWhite,
          size: 100,
        ),
      ),
    );
  }

}