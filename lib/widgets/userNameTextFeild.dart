import 'package:flutter/material.dart';

class userName extends StatelessWidget {
  const userName({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: "UserName",
        hintStyle: TextStyle(color: Colors.grey),
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
      ),
    );
  }
}
