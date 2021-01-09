/*
 * flutter_design_challenge - screens.onboarding.widgets/next_button
 *
 * by Matthieu S. at 08-01-21 14:02
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/constants.dart';

class NextButton extends StatelessWidget {

  final Function onClick;

  NextButton({
    @required this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: this.onClick,
      child: Icon(
        Icons.arrow_forward,
        color: kBlue,
        size: 40,
      ),
      fillColor: kWhite,
      shape: CircleBorder(),
      padding: EdgeInsets.all(kPaddingM),
    );
  }

}