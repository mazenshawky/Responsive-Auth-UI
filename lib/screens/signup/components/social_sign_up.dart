import 'package:auth_ui/screens/signup/components/social_icon.dart';
import 'package:flutter/material.dart';

import '../../../resources/app_assets.dart';
import 'or_divider.dart';

class SocialSignUp extends StatelessWidget {
  const SocialSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}
