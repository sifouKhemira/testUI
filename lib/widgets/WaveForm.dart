import 'package:flutter/material.dart';

class WaveformProgressBar extends StatelessWidget {
  final double progress;
  final Color color;
  final Color progressColor;
  final double spacing;

  WaveformProgressBar({
    required this.progress,
    required this.color,
    required this.progressColor,
    this.spacing = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _WaveformProgressBarPainter(
        progress: progress,
        color: color,
        progressColor: progressColor,
        spacing: spacing,
      ),
    );
  }
}

class _WaveformProgressBarPainter extends CustomPainter {
  final double progress;
  final Color color;
  final Color progressColor;
  final double spacing;

  _WaveformProgressBarPainter({
    required this.progress,
    required this.color,
    required this.progressColor,
    required this.spacing,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Calculate the number of lines based on progress and spacing
    final numLines = (size.width / (spacing * 2)).ceil();

    // Calculate the width of each line segment
    final lineWidth = size.width / numLines;

    // Paint the lines with spacing and progress
    final paint = Paint()..color = color;
    for (int i = 0; i < numLines; i++) {
      final x = i * spacing * 2;
      final lineHeight = i < progress * numLines ? size.height : size.height * 0.7;
      final startY = (size.height - lineHeight) / 2;
      final endY = startY + lineHeight;
      canvas.drawLine(Offset(x, startY), Offset(x, endY), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}