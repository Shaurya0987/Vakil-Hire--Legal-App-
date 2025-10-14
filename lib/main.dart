import 'package:flutter/material.dart';
import 'package:vakilhire/Mobile%20web/loginmob.dart';
import 'package:vakilhire/Pages/advocatePage.dart';

import 'package:vakilhire/Pages/root.dart';
import 'package:vakilhire/Pages/settingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home: Scaffold(body: Root()),
=======
      home: Scaffold(body:Loginmob()),
>>>>>>> 0a916c6 (Removed Icons)
    );
  }
}
