/*
 * flutter_design_challenge - screens.onboarding.widgets/header
 *
 * by Matthieu S. at 08-01-21 13:15
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/constants.dart';
import 'package:flutter_design_challenge/widget/logo.dart';

class Header extends StatelessWidget {

  final Function onClick;

  Header({
    @required this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(kPaddingM),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Logo(
            size: 50.0,
            color: kWhite,
          ),
          InkWell(
            onTap: this.onClick,
            child: Text(
              'Skip',
              style: TextStyle(
                  color: kWhite,
                  fontSize: 20
              ),
            ),
          )
        ],
      ),
    );
  }

}
