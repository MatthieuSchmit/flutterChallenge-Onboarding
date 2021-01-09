/*
 * flutter_design_challenge - screens.onboarding.pages.second_page/second_light_content
 *
 * by Matthieu S. at 08-01-21 14:39
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/screens/onboarding/widgets/trio_icons.dart';

class SecondLightContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TrioIcons(
      icon01: Icons.edit,
      icon02: Icons.camera_alt,
      icon03: Icons.compass_calibration,
    );
  }

}