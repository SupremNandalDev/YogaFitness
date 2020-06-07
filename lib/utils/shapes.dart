import 'package:flutter/material.dart';

class DrawCircle extends CustomPainter {
  Paint _paint;
  Color fillColor;
  double dim;

  DrawCircle({this.fillColor, this.dim}) {
    _paint = Paint()
      ..color = fillColor
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(0.0, 0.0), dim, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
