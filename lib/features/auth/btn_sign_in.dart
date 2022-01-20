import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/common/login_type.dart';
import '../../core/services/firebase_service.dart';

class SignInButton extends StatelessWidget {
  final FaIcon faIcon;
  final LoginType type;
  final String textLabel;

  const SignInButton(
      {Key? key,
      required this.faIcon,
      required this.type,
      required this.textLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseService = FirebaseService();
    return Container(
      width: 256.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
      ),
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
      child: TextButton.icon(
        icon: faIcon,
        label: Text(
          textLabel,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
        onPressed: type == LoginType.typeGoogle
            ? firebaseService.signInwithGoogle
            : firebaseService.signInWithFacebook,
      ),
    );
  }
}
