import 'package:flutter/material.dart';
import 'package:vakilhire/Desktop%20web/loginpc.dart';
import 'package:vakilhire/Mobile%20web/loginmob.dart';
import 'package:vakilhire/responsive/responsive_body.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBody(mobileBody: Loginmob(), desktopBody: Loginpc());
  }
}
