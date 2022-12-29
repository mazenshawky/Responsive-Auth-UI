import 'package:auth_ui/resources/responsive.dart';
import 'package:auth_ui/screens/login/components/background.dart';
import 'package:flutter/material.dart';

import 'login_form.dart';
import 'login_screen_image.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: Responsive(
        mobile: MobileLoginScreen(),
        desktop: WebLoginScreen(),
      ),
    );
  }
}

class WebLoginScreen extends StatelessWidget {
  const WebLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          const Expanded(
            child: LoginScreenImage(),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 450,
                  child: LoginForm(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            LoginScreenImage(),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
