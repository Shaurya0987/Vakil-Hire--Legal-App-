import 'package:flutter/material.dart';

class AdvocateCard extends StatelessWidget {
  final String name;
  final String specialty;
  final String experience;
  final String imagePath;

  const AdvocateCard({  
    super.key,
    required this.name,
    required this.specialty,
    required this.experience,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Avatar
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(imagePath),
            ),
            const SizedBox(width: 20),

            // Advocate Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    specialty,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    experience,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Example usage in a list
class AdvocatePage extends StatelessWidget {
  const AdvocatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Advocates")),
      body: ListView(
        children: const [
          AdvocateCard(
            name: "Olivia Wilson",
            specialty: "Land & Divorce",
            experience: "YOE-13 Years",
            imagePath: "assets/images/advocate1.jpg",
          ),
          AdvocateCard(
            name: "Jeffrey Smith",
            specialty: "Criminal Law",
            experience: "YOE-10 Years",
            imagePath: "assets/images/advocate2.jpg",
          ),
          // Add more advocate cards here
        ],
      ),
    );
  }
}
