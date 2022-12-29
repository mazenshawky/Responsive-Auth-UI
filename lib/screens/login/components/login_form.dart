import 'package:auth_ui/resources/media_query_values.dart';
import 'package:flutter/material.dart';

import '../../../components/already_have_an_account_check.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../Signup/signup_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedInputField(
          hintText: 'Your Email',
          onChanged: (value) {},
        ),
        RoundedPasswordField(
          onChanged: (value) {},
        ),
        RoundedButton(
          text: 'LOGIN',
          press: () {},
        ),
        SizedBox(height: context.height * 0.03),
        AlreadyHaveAnAccountCheck(
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
