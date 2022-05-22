import 'package:flutter/material.dart';
import 'package:flutter_l1/components/background.dart';
import 'package:flutter_l1/components/conexion_header.dart';
import 'package:flutter_l1/components/rounded_button.dart';
import 'package:flutter_l1/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../components/gradient_icon.dart';
import '../../components/gradient_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ConnExionHeader(),
              SizedBox(
                height: size.height * 0.1,
              ),
              _buildSocialButton(
                  context, 'Sign in with Facebook', FontAwesomeIcons.facebookF),
              SizedBox(
                height: size.height * 0.035,
              ),
              _buildSocialButton(
                  context, 'Sign in with Twitter', FontAwesomeIcons.twitter),
              SizedBox(
                height: size.height * 0.035,
              ),
              _buildSignUpButton(context),
              SizedBox(
                height: size.height * 0.035,
              ),
              GestureDetector(
                onTap: () => _onSignInPressed(context),
                child: Text('ALREADY REGISTERED? SIGN IN',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          decoration: TextDecoration.underline,
                        )),
              ),
              SizedBox(
                height: size.height * 0.035,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton(BuildContext context, String text, IconData icon) {
    Size size = MediaQuery.of(context).size;
    return RoundedButton(
        width: size.width * 6 / 7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20,
            ),
            GradientIcon(
              padding: 0,
              icon: icon,
              size: 30,
              gradient: const LinearGradient(
                colors: <Color>[
                  coral2,
                  violetRed3,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 7),
              height: 30,
              width: 2,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    coral2,
                    violetRed3,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            GradientText(
              text,
              style: Theme.of(context).textTheme.subtitle2,
              gradient: const LinearGradient(colors: [
                violetRed3,
                coral2,
              ]),
            ),
          ],
        ),
        press: () {});
  }

  Widget _buildSignUpButton(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return RoundedButton(
        width: size.width * 6 / 7,
        child: GradientText(
          'Sign Up',
          style: Theme.of(context).textTheme.subtitle2,
          gradient: const LinearGradient(colors: [
            violetRed3,
            coral2,
          ]),
        ),
        press: () {});
  }

  void _onSignInPressed(BuildContext context) {
    Navigator.pop(context);
  }
}
