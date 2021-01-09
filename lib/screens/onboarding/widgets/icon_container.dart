/*
 * flutter_design_challenge - view.widget/icon_container
 *
 * by Matthieu S. at 08-01-21 10:57
 *
 */


import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/constants.dart';

class IconContainer extends StatelessWidget {

  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  final double size;

  IconContainer({
    @required this.backgroundColor,
    @required this.iconColor,
    @required this.icon,
    @required this.size
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kSpaceS),
      height: this.size,
      width: this.size,
      decoration: BoxDecoration(
        color: this.backgroundColor,
        borderRadius: BorderRadius.circular(this.size)
      ),
      alignment: Alignment.center,
      child: Icon(
        this.icon,
        color: this.iconColor,
        size: this.size * 0.6,
      ),
    );
  }

}
