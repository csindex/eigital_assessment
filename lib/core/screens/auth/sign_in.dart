import 'package:eigital_assessment/core/common/constants.dart';
import 'package:eigital_assessment/core/common/login_type.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './../../../features/auth/btn_sign_in.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SignInButton(
            faIcon: const FaIcon(FontAwesomeIcons.google),
            type: LoginType.typeGoogle,
            textLabel: Constants.textSignInGoogle,
          )
        ],
      ),
    );
  }
}
