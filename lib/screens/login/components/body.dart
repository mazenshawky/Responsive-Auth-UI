import 'package:auth_ui/components/rounded_button.dart';
import 'package:auth_ui/resources/media_query_values.dart';
import 'package:auth_ui/screens/Signup/signup_screen.dart';
import 'package:auth_ui/screens/login/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/already_have_an_account_check.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../../resources/app_assets.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'LOGIN',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: context.height * 0.03),
              SvgPicture.asset(
                IconAssets.login,
                height: context.height * 0.35,
              ),
              SizedBox(height: context.height * 0.03),
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
          ),
        ),
      ),
    );
  }
}
