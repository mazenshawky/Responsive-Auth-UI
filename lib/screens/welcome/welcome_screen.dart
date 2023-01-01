import 'package:auth_ui/resources/responsive.dart';
import 'package:auth_ui/screens/welcome/components/background.dart';
import 'package:auth_ui/screens/welcome/components/welcome_image.dart';
import 'package:flutter/material.dart';

import 'components/login_signup_btn.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Background(
        child: Responsive(
          mobile: MobileWelcomeScreen(),
          desktop: WebWelcomeScreen(),
        ),
      ),
    );
  }
}

class WebWelcomeScreen extends StatelessWidget {
  const WebWelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          const Expanded(
            child: WelcomeImage(),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 450,
                  child: LoginAndSignupBtn(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const WelcomeImage(),
          Row(
            children: const [
              Spacer(),
              Expanded(
                flex: 8,
                child: LoginAndSignupBtn(),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
