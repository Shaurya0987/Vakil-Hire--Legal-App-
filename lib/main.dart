import 'package:flutter/material.dart';
import 'package:vakilhire/Colors/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.background,
        body: Center(child: Text('')),
      ),
    );
  }
}
