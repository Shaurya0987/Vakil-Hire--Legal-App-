import 'package:flutter/material.dart';

class password extends StatelessWidget {
  const password({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.grey),
        
        // contentPadding: EdgeInsets.symmetric(horizontal: 40),
        suffixIcon: Icon(Icons.visibility_off),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
      )
    );
  }
}
