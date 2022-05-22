import 'package:flutter/material.dart';

import '../constants.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: child,
        width: double.infinity,
        height: size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            coral,
            violetRed,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ));
  }
}
