import 'package:auth_ui/resources/media_query_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/app_assets.dart';

class LoginScreenImage extends StatelessWidget {
  const LoginScreenImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
