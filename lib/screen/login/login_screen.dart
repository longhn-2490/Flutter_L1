import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_l1/components/background.dart';
import 'package:flutter_l1/components/conexion_header.dart';
import 'package:flutter_l1/components/rounded_button.dart';
import 'package:flutter_l1/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../components/gradient_icon.dart';
import '../../components/gradient_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
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
                height: size.height * 0.025,
              ),
              Text('SIGN IN',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: _buildInputField('Enter Email')),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: _buildInputField('Password'),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: _buildRememberPasswordCheckbox(),
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              _buildLoginButton(context),
              SizedBox(
                height: size.height * 0.04,
              ),
              _buildSocialButtons(),
              SizedBox(
                height: size.height * 0.027,
              ),
              Text('FORGOT PASSWORD?',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        decoration: TextDecoration.underline,
                      )),
              SizedBox(
                height: size.height * 0.038,
              ),
              _buildSignUpAccount(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(String hintText) => TextField(
      decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: peachSchnapps),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: peachSchnapps),
          ),
          focusColor: Colors.white,
          hintText: hintText,
          hoverColor: Colors.white,
          hintStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: peachSchnapps,
              fontWeight: FontWeight.normal)));

  Color getCheckboxColor(Set<MaterialState> states) {
    return coral;
  }

  Widget _buildRememberPasswordCheckbox() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Checkbox(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              activeColor: coral,
              focusColor: coral,
              fillColor: MaterialStateProperty.resolveWith(getCheckboxColor),
              tristate: false,
              value: value,
              onChanged: (value) {
                setState(() {
                  this.value = value!;
                });
              }),
          Text('Remember Password',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(fontSize: 15.0)),
        ],
      );

  Widget _buildLoginButton(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return RoundedButton(
        width: size.width * 3 / 4,
        child: GradientText(
          'GET STARTED',
          style: Theme.of(context).textTheme.bodyText1,
          gradient: const LinearGradient(colors: [
            violetRed3,
            coral2,
          ]),
        ),
        press: () {});
  }

  Widget _buildSocialButtons() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          GradientIcon(
            icon: FontAwesomeIcons.facebookF,
            size: 30,
            gradient: LinearGradient(
              colors: <Color>[
                coral2,
                violetRed3,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          GradientIcon(
            icon: FontAwesomeIcons.twitter,
            size: 30,
            gradient: LinearGradient(
              colors: <Color>[
                coral2,
                violetRed3,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ],
      );

  _buildSignUpAccount() => Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 80,
        color: maroonFlush,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "DONT HAVE ACCOUNT ? ",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: coral3),
            ),
            GestureDetector(
              onTap: () => _onSignUpPressed(context),
              child: Text(
                "SIGN UP",
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      decoration: TextDecoration.underline,
                    ),
              ),
            ),
          ],
        ),
      );

  void _onSignUpPressed(BuildContext context) {
    Navigator.pushNamed(context, '/SignUp');
  }
}
