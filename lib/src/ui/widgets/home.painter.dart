import 'package:flutter/material.dart';

class HomePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Color(0xff73a270);
    Path path = Path();

    path.moveTo(0.0, size.height * 0.70);

    path.quadraticBezierTo(
      size.width * .25,
      size.height * 0.65,
      size.width * 0.5,
      size.height * 0.70,
    );
    path.quadraticBezierTo(
      size.width * .88,
      size.height * 0.75,
      size.width,
      size.height * 0.48,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
