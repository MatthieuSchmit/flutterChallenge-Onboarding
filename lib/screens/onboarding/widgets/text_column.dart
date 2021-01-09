/*
 * flutter_design_challenge - screens.onboarding.widgets/text_column
 *
 * by Matthieu S. at 08-01-21 13:19
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/constants.dart';

class TextColumn extends StatelessWidget {

  final String title;
  final String text;

  TextColumn({
    @required this.title,
    @required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kSpaceL),
      child: Column(
        children: [
          Text(
            this.title,
            style: TextStyle(
                color: kWhite,
                fontSize: 40,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: kSpaceM),
          Text(
            this.text,
            style: TextStyle(
                color: kWhite,
                fontSize: 20
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

}
