/*
 * flutter_design_challenge - screens.onboarding.widgets/page_indicator_single
 *
 * by Matthieu S. at 08-01-21 17:23
 *
 */

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/constants.dart';

class PageIndicator extends StatelessWidget {

  final int currentPage;
  final Widget nextButton;

  PageIndicator({
    @required this.currentPage,
    @required this.nextButton
  });

  double get indicatorGap => pi / 12;
  double get indicatorLength => pi / 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: _PageIndicatorUnit(
          color: (this.currentPage >= 0) ? kWhite : kWhite.withOpacity(0.25),
          indicatorLength: indicatorLength,
          startAngle: (4 * indicatorLength) - (indicatorLength + indicatorGap)
        ),
        child: CustomPaint(
          painter: _PageIndicatorUnit(
              color: (this.currentPage >= 1) ? kWhite : kWhite.withOpacity(0.25),
              indicatorLength: indicatorLength,
              startAngle: 4 * indicatorLength
          ),
          child: CustomPaint(
            painter: _PageIndicatorUnit(
                color: (this.currentPage >= 2) ? kWhite : kWhite.withOpacity(0.25),
                indicatorLength: indicatorLength,
                startAngle: (4 * indicatorLength) + indicatorLength + indicatorGap
            ),
            child: this.nextButton,
          )
        )
      ),
    );
  }

}

class _PageIndicatorUnit extends CustomPainter {

  final Color color;
  final double startAngle;
  final double indicatorLength;

  _PageIndicatorUnit({
    @required this.color,
    @required this.startAngle,
    @required this.indicatorLength,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = this.color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    canvas.drawArc(
      Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: (size.shortestSide + 12.0) / 2
      ),
      this.startAngle,
      this.indicatorLength,
      false,
      paint
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}