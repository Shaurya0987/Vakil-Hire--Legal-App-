import 'package:flutter/material.dart';

import 'package:vakilhire/Colors/app_colors.dart';
import 'package:vakilhire/Root/root.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: AppColors.background, body: Root()),
    );
  }
}
