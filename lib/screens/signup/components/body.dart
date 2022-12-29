import 'package:auth_ui/components/already_have_an_account_check.dart';
import 'package:auth_ui/components/rounded_button.dart';
import 'package:auth_ui/components/rounded_input_field.dart';
import 'package:auth_ui/components/rounded_password_field.dart';
import 'package:auth_ui/resources/media_query_values.dart';
import 'package:auth_ui/screens/login/login_screen.dart';
import 'package:auth_ui/screens/signup/components/background.dart';
import 'package:auth_ui/screens/signup/components/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/app_assets.dart';
import 'or_divider.dart';

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
                'SIGN UP',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: context.height * 0.03),
              SvgPicture.asset(
                IconAssets.signup,
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
                text: 'SIGN UP',
                press: () {},
              ),
              SizedBox(height: context.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
              ),
              const OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    iconSrc: IconAssets.facebook,
                    press: () {},
                  ),
                  SocialIcon(
                    iconSrc: IconAssets.twitter,
                    press: () {},
                  ),
                  SocialIcon(
                    iconSrc: IconAssets.google,
                    press: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
