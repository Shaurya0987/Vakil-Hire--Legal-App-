import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vakilhire/Desktop%20web/loginpc.dart';

class ResponsiveBody extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  const ResponsiveBody({
    super.key,
    required this.mobileBody,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
