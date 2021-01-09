/*
 * flutter_design_challenge - screens.onboarding.pages.first_page/first_light_content
 *
 * by Matthieu S. at 08-01-21 14:26
 *
 */


import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/screens/onboarding/widgets/trio_icons.dart';

class FirstLightContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TrioIcons(
      icon01: Icons.supervised_user_circle,
      icon02: Icons.people,
      icon03: Icons.person,
    );
  }

}
