import 'package:auth_ui/resources/media_query_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/app_assets.dart';

class SignUpScreenImage extends StatelessWidget {
  const SignUpScreenImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
