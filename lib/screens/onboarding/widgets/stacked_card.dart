/*
 * flutter_design_challenge - screens.onboarding.widgets/stacked_card
 *
 * by Matthieu S. at 08-01-21 13:24
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/constants.dart';

class StackedCard extends StatelessWidget {

  final bool topPosition;
  final Widget darkContent;
  final Widget lightContent;

  final Animation<Offset> lightOffsetAnimation;
  final Animation<Offset> darkOffsetAnimation;

  StackedCard({
    @required this.topPosition,
    @required this.darkContent,
    @required this.lightContent,
    @required this.lightOffsetAnimation,
    @required this.darkOffsetAnimation
  });

  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: AlignmentDirectional.center,
      // overflow: Overflow.visible,
      clipBehavior: Clip.none,
      children: [
        SlideTransition(
          position: darkOffsetAnimation,
          child: Container(
            margin: (topPosition) ? EdgeInsets.only(top: 30) : EdgeInsets.only(bottom: 30),
            width: MediaQuery.of(context).size.width - 2*kPaddingM,
            height: 250,
            decoration: BoxDecoration(
                color: kDarkBlue,
                borderRadius: BorderRadius.circular(15)
            ),
            child: this.darkContent,
          ),
        ),
        Positioned(
          top: (topPosition) ? 0 : null,
          bottom: (topPosition) ? null : 0,
          left: (MediaQuery.of(context).size.width - 250 - 2*kPaddingS) / 2,
          child: SlideTransition(
            position: lightOffsetAnimation,
            child: this.lightContent,
          )
        ),
      ],
    );
  }

}
