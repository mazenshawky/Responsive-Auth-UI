import 'package:auth_ui/resources/responsive.dart';
import 'package:auth_ui/screens/signup/components/background.dart';
import 'package:auth_ui/screens/signup/components/sign_up_form.dart';
import 'package:auth_ui/screens/signup/components/sign_up_image.dart';
import 'package:auth_ui/screens/signup/components/social_sign_up.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: Responsive(
        mobile: MobileSignUpScreen(),
        desktop: WebSignUpScreen(),
      ),
    );
  }
}

class WebSignUpScreen extends StatelessWidget {
  const WebSignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          const Expanded(
            child: SignUpScreenImage(),
          ),
          Expanded(
            child: Column(
              children: const [
                SizedBox(
                  width: 450,
                  child: SignUpForm(),
                ),
                SizedBox(
                  width: 450,
                  child: SocialSignUp(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileSignUpScreen extends StatelessWidget {
  const MobileSignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SignUpScreenImage(),
            SignUpForm(),
            SocialSignUp(),
          ],
        ),
      ),
    );
  }
}
