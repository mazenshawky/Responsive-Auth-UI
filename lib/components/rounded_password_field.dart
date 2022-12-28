import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../screens/login/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          icon: Icon(
            Icons.lock,
            color: AppColors.kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: AppColors.kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
