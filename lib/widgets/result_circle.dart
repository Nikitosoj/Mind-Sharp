// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

class ResultCircleWidget extends StatelessWidget {
  const ResultCircleWidget({super.key, required this.percent});
  final percent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CustomPaint(
            painter: MyPainter(
          percent: percent,
        )),
        Center(
          child: Text(
            '$percent%',
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
        )
      ],
    );
  }
}

class MyPainter extends CustomPainter {
  final double percent;

  MyPainter({required this.percent});

  @override
  void paint(Canvas canvas, Size size) {
    final arcRect = calculateArcsRect(size);
    drawBackground(canvas, size);
    drawGreenProgress(canvas, arcRect);
    drawFreeArc(canvas, arcRect);
  }

  void drawGreenProgress(Canvas canvas, Rect arcRect) {
    final paint = Paint();
    paint.color = Colors.green;
    paint.strokeWidth = 5;
    paint.style = PaintingStyle.stroke;
    canvas.drawArc(
      arcRect,
      -pi / 2,
      pi * 2 * (percent / 100),
      false,
      paint,
    );
  }

  void drawBackground(Canvas canvas, Size size) {
    final backgroundPaint = Paint();
    backgroundPaint.color = Colors.transparent;
    backgroundPaint.style = PaintingStyle.fill;
    canvas.drawOval(Offset.zero & size, backgroundPaint);
  }

  void drawFreeArc(Canvas canvas, Rect arcRect) {
    final arcPaint = Paint();
    arcPaint.color = Colors.purple;
    arcPaint.style = PaintingStyle.stroke;
    arcPaint.strokeWidth = 5;

    canvas.drawArc(
      arcRect,
      pi * 2 * (percent / 100) - (pi / 2),
      pi * 2 * (1.0 - percent / 100),
      false,
      arcPaint,
    );
  }

  Rect calculateArcsRect(Size size) {
    final linesMargin = 3;
    final strokeWidth = 5;
    final offest = strokeWidth / 2 + linesMargin;
    final arcRect = Offset(offest, offest) &
        Size(size.width - offest * 2, size.height - offest * 2);
    return arcRect;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
