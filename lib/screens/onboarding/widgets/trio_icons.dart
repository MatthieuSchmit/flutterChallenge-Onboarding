/*
 * flutter_design_challenge - view.widget/trio_icons
 *
 * by Matthieu S. at 08-01-21 11:49
 *
 */

import 'package:flutter/material.dart';
import 'file:///C:/Users/matth/Developer/flutter_design_challenge/lib/screens/onboarding/widgets/icon_container.dart';
import 'package:flutter_design_challenge/constants.dart';

class TrioIcons extends StatelessWidget {

  final IconData icon01;
  final IconData icon02;
  final IconData icon03;

  TrioIcons({
    @required this.icon01,
    @required this.icon02,
    @required this.icon03
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 230,
        height: 120,
        decoration: BoxDecoration(
            color: kLightBlue,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconContainer(
              backgroundColor: Colors.lightBlueAccent,
              icon: this.icon01,
              iconColor: Colors.white,
              size: 50,
            ),
            IconContainer(
              backgroundColor: Colors.lightBlueAccent,
              icon: this.icon02,
              iconColor: Colors.white,
              size: 70,
            ),
            IconContainer(
              backgroundColor: Colors.lightBlueAccent,
              icon: this.icon03,
              iconColor: Colors.white,
              size: 50,
            ),
          ],
        )
    );
  }

}
