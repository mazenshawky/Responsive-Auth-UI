import 'package:flutter/material.dart';
import 'package:auth_ui/resources/media_query_values.dart';
import 'package:auth_ui/resources/app_assets.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              ImageAssets.mainTop,
              width: context.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              ImageAssets.mainBottom,
              width: context.width * 0.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
