import 'package:auth_ui/resources/app_assets.dart';
import 'package:auth_ui/resources/app_colors.dart';
import 'package:auth_ui/resources/media_query_values.dart';
import 'package:auth_ui/screens/login/login_screen.dart';
import 'package:auth_ui/screens/welcome/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/rounded_button.dart';
import '../../Signup/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'WELCOME TO EDU',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: context.height * 0.03),
            SvgPicture.asset(
              IconAssets.chat,
              height: context.height * 0.45,
            ),
            SizedBox(height: context.height * 0.05),
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
        ),
      ),
    );
  }
}
