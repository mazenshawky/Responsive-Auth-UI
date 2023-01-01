import 'package:auth_ui/resources/app_colors.dart';
import 'package:auth_ui/resources/media_query_values.dart';
import 'package:flutter/material.dart';

import '../../../components/already_have_an_account_check.dart';
import '../../Signup/signup_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: AppColors.kPrimaryColor,
            onSaved: (email) {},
            decoration: const InputDecoration(
              hintText: "Email",
              prefixIcon: Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(Icons.person),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            textInputAction: TextInputAction.done,
            obscureText: true,
            cursorColor: AppColors.kPrimaryColor,
            decoration: const InputDecoration(
              hintText: "Password",
              prefixIcon: Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(Icons.lock),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "LOGIN",
              ),
            ),
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
    );
  }
}
