import 'package:flutter/material.dart';

class CartCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8938750, size.height * 0.0510500);
    path_0.lineTo(size.width * 0.7222750, size.height * 0.6199000);
    path_0.lineTo(size.width * 0.2188875, size.height * 0.6221750);
    path_0.quadraticBezierTo(size.width * 0.1020750, size.height * 0.6310750,
        size.width * 0.1060000, size.height * 0.7350500);
    path_0.quadraticBezierTo(size.width * 0.0994625, size.height * 0.8564500,
        size.width * 0.2166250, size.height * 0.8434500);
    path_0.lineTo(size.width * 0.7791875, size.height * 0.8474500);

    canvas.drawPath(path_0, paint_0);

    Paint paint_1 = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2194375, size.height * 0.8420750);
    path_1.cubicTo(
        size.width * 0.2351125,
        size.height * 0.8420750,
        size.width * 0.2586750,
        size.height * 0.8640500,
        size.width * 0.2586750,
        size.height * 0.9205750);
    path_1.cubicTo(
        size.width * 0.2586750,
        size.height * 0.9519250,
        size.width * 0.2468625,
        size.height * 0.9990500,
        size.width * 0.2194375,
        size.height * 0.9990500);
    path_1.cubicTo(
        size.width * 0.2037500,
        size.height * 0.9990500,
        size.width * 0.1801875,
        size.height * 0.9754250,
        size.width * 0.1801875,
        size.height * 0.9205750);
    path_1.cubicTo(
        size.width * 0.1801875,
        size.height * 0.8892000,
        size.width * 0.1920000,
        size.height * 0.8420750,
        size.width * 0.2194375,
        size.height * 0.8420750);
    path_1.close();

    canvas.drawPath(path_1, paint_1);

    Paint paint_2 = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.6829750, size.height * 0.8416500);
    path_2.cubicTo(
        size.width * 0.6986500,
        size.height * 0.8412750,
        size.width * 0.7222125,
        size.height * 0.8636250,
        size.width * 0.7222125,
        size.height * 0.9201500);
    path_2.cubicTo(
        size.width * 0.7222125,
        size.height * 0.9515000,
        size.width * 0.7104000,
        size.height * 0.9986250,
        size.width * 0.6829750,
        size.height * 0.9986250);
    path_2.cubicTo(
        size.width * 0.6672875,
        size.height * 0.9986250,
        size.width * 0.6437250,
        size.height * 0.9750000,
        size.width * 0.6437250,
        size.height * 0.9201500);
    path_2.cubicTo(
        size.width * 0.6437250,
        size.height * 0.8887750,
        size.width * 0.6555375,
        size.height * 0.8412750,
        size.width * 0.6829750,
        size.height * 0.8416500);
    path_2.close();

    canvas.drawPath(path_2, paint_2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
