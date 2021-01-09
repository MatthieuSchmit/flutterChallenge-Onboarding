/*
 * flutter_design_challenge - screens.onboarding.pages.first_page/first_text
 *
 * by Matthieu S. at 08-01-21 14:27
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/screens/onboarding/widgets/text_column.dart';

class FirstText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextColumn(
      title: "Community",
      text: "Lorem ipsum dolor sit consetetur sadispacing elitr, sid diam.",
    );
  }

}