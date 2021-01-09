/*
 * flutter_design_challenge - screens.login.widget/login_curve
 *
 * by Matthieu S. at 08-01-21 16:16
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/constants.dart';

class LoginCurve extends CustomPainter {



  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = kDarkBlue;
    paint.style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, size.height * 0.2);
    path.quadraticBezierTo(
      size.width * 0.3, size.height * 0.5,
      size.width, 0
    );
    path.lineTo(size.width, size.height * 0.15);
    path.quadraticBezierTo(
        size.width * 0.3, size.height * 0.55,
        0, size.height * 0.60
    );
    canvas.drawPath(path, paint);

    // GREY
    var paintGrey = new Paint();
    paintGrey.color = kBlack;
    paintGrey.style = PaintingStyle.fill;
    var pathGrey = new Path();
    pathGrey.moveTo(0, size.height * 0.60);
    pathGrey.quadraticBezierTo(
      size.width * 0.3, size.height * 0.55,
      size.width, size.height * 0.15
    );
    pathGrey.lineTo(size.width, size.height * 0.30);
    pathGrey.quadraticBezierTo(
        size.width * 0.3, size.height * 0.85,
        0, size.height
    );
    canvas.drawPath(pathGrey, paintGrey);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}