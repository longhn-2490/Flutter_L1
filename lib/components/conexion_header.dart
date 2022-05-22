import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class ConnExionHeader extends StatelessWidget {
  const ConnExionHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * 0.1,
        ),
        SvgPicture.asset('assets/exion.svg'),
        SizedBox(
          height: size.height * 0.015,
        ),
        _buildTitle(context),
        SizedBox(
          height: size.height * 0.007,
        ),
        Text('Find and Meet people around\n you to find LOVE',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(height: 1.1, fontSize: 15.0)),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) => RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'CONN',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: violetRed),
            ),
            TextSpan(
                text: 'EXION', style: Theme.of(context).textTheme.headline6),
          ],
        ),
      );
}
