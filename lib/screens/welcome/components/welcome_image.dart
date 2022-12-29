import 'package:auth_ui/resources/media_query_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/app_assets.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
