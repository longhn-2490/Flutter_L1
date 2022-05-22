import 'package:flutter/material.dart';

import '../constants.dart';
import 'gradient_text.dart';

class RoundedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback press;
  final Color color, textColor;
  final double width;

  const RoundedButton(
      {Key? key,
      required this.child,
      required this.press,
      required this.width,
      this.color = coral,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        minimumSize: Size(width, 66),
        maximumSize: Size(width, 66),
        primary: Colors.white, // background
        onPrimary: Colors.cyan, // foreground
      ),
      onPressed: () {},
      child: child,
    );
  }
}
