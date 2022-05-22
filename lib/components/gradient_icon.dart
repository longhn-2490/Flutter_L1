import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  const GradientIcon(
      {required this.icon,
      required this.size,
      required this.gradient,
      this.padding = 20.0});

  final IconData icon;
  final double size;
  final Gradient gradient;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: ShaderMask(
        child: Icon(
          icon,
          size: size,
          color: Colors.white,
        ),
        shaderCallback: (Rect bounds) {
          final Rect rect = Rect.fromLTRB(0, 0, size, size);
          return gradient.createShader(rect);
        },
      ),
    );
  }
}
