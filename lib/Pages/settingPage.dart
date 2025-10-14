import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/faceImage.jpg"),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                "Jefferson Keneddy",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 7),
            const Center(child: Text("hellosexy@gmail.com")),
            const SizedBox(height: 20),

            // Edit Profile
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.grey,
                ),
                onTap: () {},
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "General Settings",
              style: TextStyle(
                fontSize: 21,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 20),

            // Mode
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.dark_mode,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Mode",
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: const Text("Dark & Light"),
                trailing: const Icon(
                  Icons.toggle_off,
                  color: Colors.blue,
                  size: 50,
                ),
                onTap: () {},
              ),
            ),

            const SizedBox(height: 15),

            // Language
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Icon(
                    Icons.language,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Language",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.grey,
                ),
                onTap: () {},
              ),
            ),

            const SizedBox(height: 15),

            // About
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.question_mark_outlined,
                    color: Colors.purple,
                  ),
                ),
                title: const Text(
                  "About",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.grey,
                ),
                onTap: () {},
              ),
            ),

            const SizedBox(height: 15),

            // Terms & Conditions
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.error,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Terms & Conditions",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.grey,
                ),
                onTap: () {},
              ),
            ),

            const SizedBox(height: 15),

            // Privacy Policy
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Privacy Policy",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.grey,
                ),
                onTap: () {},
              ),
            ),

            const SizedBox(height: 15),

            // Rate Us
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Rate Us",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.grey,
                ),
                onTap: () {},
              ),
            ),

            const SizedBox(height: 15),

            // Share This App
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Share This App",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.grey,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
