import 'package:flutter/material.dart';
import 'dart:math' as math;

class ZaytunLogo extends StatelessWidget {
  final double size;

  const ZaytunLogo({super.key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: _ZaytunLogoPainter(),
      ),
    );
  }
}

class _ZaytunLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double w = size.width;
    final double h = size.height;
    final double scale = w / 200.0;

    // Arka plan: yeşil yuvarlak kare
    final bgPaint = Paint()..color = const Color(0xFF6B7A52);
    final bgRect = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, w, h),
      Radius.circular(40 * scale),
    );
    canvas.drawRRect(bgRect, bgPaint);

    // Zeytin gövdesi (beyaz elips)
    final bodyPaint = Paint()..color = const Color(0xFFF6F1E9);
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(100 * scale, 118 * scale),
        width: 68 * scale,
        height: 96 * scale,
      ),
      bodyPaint,
    );

    // Zeytin içi ton (kahverengi, saydam)
    final innerPaint = Paint()
      ..color = const Color(0xFFC9784A).withOpacity(0.35);
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(100 * scale, 122 * scale),
        width: 40 * scale,
        height: 60 * scale,
      ),
      innerPaint,
    );

    // Dal
    final branchPaint = Paint()
      ..color = const Color(0xFFF6F1E9)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6 * scale
      ..strokeCap = StrokeCap.round;
    final branchPath = Path()
      ..moveTo(100 * scale, 70 * scale)
      ..cubicTo(
        100 * scale, 70 * scale,
        118 * scale, 44 * scale,
        148 * scale, 50 * scale,
      );
    canvas.drawPath(branchPath, branchPaint);

    // Yaprak (döndürülmüş elips)
    final leafPaint = Paint()
      ..color = const Color(0xFFF6F1E9).withOpacity(0.85);
    canvas.save();
    canvas.translate(136 * scale, 50 * scale);
    canvas.rotate(-20 * math.pi / 180);
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset.zero,
        width: 28 * scale,
        height: 14 * scale,
      ),
      leafPaint,
    );
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
