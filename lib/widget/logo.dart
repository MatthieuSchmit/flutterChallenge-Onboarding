/*
 * flutter_design_challenge - widget/logo
 *
 * by Matthieu S. at 08-01-21 15:07
 *
 */

import 'package:flutter/material.dart';

class Logo extends StatelessWidget {

  final Color color;
  final double size;

  Logo({
    @required this.color,
    @required this.size
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.local_activity,
      color: this.color,
      size: this.size,
    );
  }

}