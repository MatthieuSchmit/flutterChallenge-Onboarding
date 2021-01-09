/*
 * flutter_design_challenge - screens.onboarding.pages.third_page/third_dark_content
 *
 * by Matthieu S. at 08-01-21 14:44
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/constants.dart';

class ThirdDarkContent extends StatelessWidget {

  double _iconSize = 35.0;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: kPaddingL, bottom: kPaddingM),
          child: Icon(
            Icons.person ,
            color: kWhite,
            size: _iconSize,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(kPaddingS),
              child: Icon(
                Icons.support_agent_outlined ,
                color: kWhite,
                size: _iconSize,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(kPaddingS),
              child: Icon(
                Icons.supervisor_account ,
                color: kWhite,
                size: _iconSize,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(kPaddingS),
              child: Icon(
                Icons.person_search_rounded ,
                color: kWhite,
                size: _iconSize,
              ),
            ),
          ],
        )
      ],
    );


  }

}
