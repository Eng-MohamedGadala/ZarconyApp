import 'package:flutter/material.dart';

class AppBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Color.fromARGB(255, 238, 106, 97)
      ..strokeWidth = 15;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1988416, size.height * 0.1260500);
    path_0.cubicTo(
        size.width * 0.0960396,
        size.height * 0.1711250,
        size.width * 0.0505248,
        size.height * 0.2655250,
        size.width * 0.0495050,
        size.height * 0.4984750);
    path_0.quadraticBezierTo(size.width * 0.0506832, size.height * 0.7517500,
        size.width * 0.1983762, size.height * 0.8769750);
    path_0.lineTo(size.width * 0.8914455, size.height * 0.9014250);
    path_0.quadraticBezierTo(size.width * 0.9807723, size.height * 0.8583250,
        size.width * 0.9622178, size.height * 0.6663250);
    path_0.quadraticBezierTo(size.width * 0.9565842, size.height * 0.5758750,
        size.width * 0.9125743, size.height * 0.4719250);
    path_0.quadraticBezierTo(size.width * 0.8386040, size.height * 0.2339500,
        size.width * 0.7937723, size.height * 0.1644750);
    path_0.quadraticBezierTo(size.width * 0.7732376, size.height * 0.1181000,
        size.width * 0.6934455, size.height * 0.1238000);
    path_0.quadraticBezierTo(size.width * 0.6073688, size.height * 0.1262562,
        size.width * 0.1988416, size.height * 0.1260500);
    path_0.close();

    canvas.drawPath(path_0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
