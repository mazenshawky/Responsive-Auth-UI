import 'package:flutter/material.dart';

import '../../../components/rounded_button.dart';
import '../../../resources/app_colors.dart';
import '../../Signup/signup_screen.dart';
import '../../login/login_screen.dart';

class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedButton(
          text: 'LOGIN',
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          },
        ),
        RoundedButton(
          text: 'SIGN UP',
          color: AppColors.kPrimaryLightColor,
          textColor: Colors.black,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignUpScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
