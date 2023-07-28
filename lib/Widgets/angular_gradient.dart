import 'package:flutter/material.dart';

class AngularGradientWithDropShadowPainter extends CustomPainter {
  final List<Color> colors;
  final double strokeWidth;
  final double shadowBlurRadius;
  final Color shadowColor;

  AngularGradientWithDropShadowPainter({
    required this.colors,
    this.strokeWidth = 5.0,
    this.shadowBlurRadius = 10.0,
    this.shadowColor = Colors.black,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;
    final Offset center = Offset(size.width / 2, size.height / 2);

    final Paint shadowPaint = Paint()
      ..color = shadowColor
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, shadowBlurRadius);

    double startAngle = -0.5;
    double endAngle = 0.0;

    for (int i = 0; i < colors.length; i++) {
      final Paint paint = Paint()
        ..color = colors[i]
        ..strokeWidth = strokeWidth
        ..style = PaintingStyle.stroke;

      endAngle = startAngle + (2 * 0.5 / colors.length);

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle * 2 * 3.14159,
        endAngle * 2 * 3.14159,
        false,
        shadowPaint,
      );

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle * 2 * 3.14159,
        endAngle * 2 * 3.14159,
        false,
        paint,
      );

      startAngle = endAngle;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
