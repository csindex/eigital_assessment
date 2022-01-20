import 'package:eigital_assessment/core/common/constants.dart';
import 'package:eigital_assessment/core/common/login_type.dart';
import 'package:eigital_assessment/core/common/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './../../../features/auth/btn_sign_in.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(
              child: Text(
                'Eigital Assessment',
                style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.indigo,
                ),
              ),
            ),
            vSpacer(72.0),
            const Text(
              'Sign in using',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.grey,
              ),
            ),
            vSpacer(8.0),
            SignInButton(
              faIcon: const FaIcon(
                FontAwesomeIcons.google,
                color: Colors.blueGrey,
              ),
              type: LoginType.typeGoogle,
              textLabel: Constants.textSignInGoogle,
            ),
            vSpacer(8.0),
            SignInButton(
              faIcon: const FaIcon(
                FontAwesomeIcons.facebook,
                color: Colors.blue,
              ),
              type: LoginType.typeFacebook,
              textLabel: Constants.textSignInFacebook,
            ),
          ],
        ),
      ),
    );
  }
}
