/*
 * flutter_design_challenge - view.onboarding/onboarding
 *
 * by Matthieu S. at 08-01-21 13:07
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/constants.dart';
import 'package:flutter_design_challenge/screens/onboarding/widgets/stacked_card.dart';

class Onboarding extends StatelessWidget {

  final int number;
  final Widget darkContent;
  final Widget lightContent;
  final Widget textColumn;

  final Animation<Offset> lightOffsetAnimation;
  final Animation<Offset> darkOffsetAnimation;

  Onboarding({
    @required this.number,
    @required this.darkContent,
    @required this.lightContent,
    @required this.textColumn,
    @required this.lightOffsetAnimation,
    @required this.darkOffsetAnimation
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StackedCard(
          topPosition: this.number.isOdd,
          darkContent: this.darkContent,
          lightContent: this.lightContent,
          lightOffsetAnimation: this.lightOffsetAnimation,
          darkOffsetAnimation: this.darkOffsetAnimation
        ),
        AnimatedSwitcher(
          duration: kCardAnimDuration,
          child: this.textColumn,
        )
      ],
    );
  }

}
