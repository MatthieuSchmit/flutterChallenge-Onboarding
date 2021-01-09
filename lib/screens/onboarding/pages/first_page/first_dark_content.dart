/*
 * flutter_design_challenge - screens.onboarding.pages.first_page/first_dark_content
 *
 * by Matthieu S. at 08-01-21 14:24
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/constants.dart';

class FirstDarkContent extends StatelessWidget {

  double _iconSize = 35.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: kPaddingL * 2),
          child: Icon(
            Icons.camera,
            color: kWhite,
            size: _iconSize,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: kPaddingL * 4),
          child: Icon(
            Icons.camera_alt,
            color: kWhite,
            size: _iconSize,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: kPaddingL * 2),
          child: Icon(
            Icons.compass_calibration,
            color: kWhite,
            size: _iconSize,
          ),
        ),
      ],
    );
  }


}