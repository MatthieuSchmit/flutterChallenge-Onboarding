/*
 * flutter_design_challenge - screens.onboarding.pages.third_page/third_light_content
 *
 * by Matthieu S. at 08-01-21 14:49
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/screens/onboarding/widgets/trio_icons.dart';

class ThirdLightContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TrioIcons(
      icon01: Icons.language,
      icon02: Icons.work,
      icon03: Icons.account_tree,
    );
  }
}
