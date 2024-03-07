import 'package:flutter/material.dart';

class DiamondPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Color(0xff800000); // you can change the color to your desired color
    final path = Path()
      ..moveTo(size.width / 2, 0) // start at the top center
      ..lineTo(size.width, size.height / 2) // draw to the middle right
      ..lineTo(size.width / 2, size.height) // draw to the bottom center
      ..lineTo(0, size.height / 2) // draw to the middle left
      ..close(); // close the path to complete the diamond shape
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(DiamondPainter oldDelegate) => false;
}

class DiamondContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(50, 50), // set the size of the container
      painter: DiamondPainter(),
    );
  }
}
