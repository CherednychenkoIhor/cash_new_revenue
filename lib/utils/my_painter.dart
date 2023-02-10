import 'package:cash_new_revenue/utils/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math';


class MyPainter extends CustomPainter {
  final double percent = 0.45;

  @override
  void paint(Canvas canvas, Size size) {
    final feelPaint = Paint();
    feelPaint.color = colorScheme;
    feelPaint.strokeWidth = 5;
    feelPaint.style = PaintingStyle.stroke;
    feelPaint.strokeCap = StrokeCap.round;
    canvas.drawArc(
        const Offset(2.5, 2.5) & Size(size.width - 5, size.height - 5),
        -pi / 2,
        pi * 2 * percent,
        false,
        feelPaint);

    final filedPaint = Paint();
    filedPaint.color = filedColor;
    filedPaint.strokeWidth = 5;
    filedPaint.style = PaintingStyle.stroke;
    canvas.drawArc(
        const Offset(2.5, 2.5) & Size(size.width - 5, size.height - 5),
        pi * 2 * percent - (pi / 2),
        pi * 2 * (1.0 - percent),
        false,
        filedPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}