import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vakilhire/Colors/app_colors.dart';

class Loginpc extends StatelessWidget {
  const Loginpc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 200),
                Text(
                  'Welcome Back !',
                  style: GoogleFonts.poppins(
                    color: AppColors.surface,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      color: AppColors.surface.withValues(alpha: 0.5),
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(text: "Boost your confidence with "),
                      TextSpan(
                        text: "Legal Hire",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            " —connect to the right lawyer, get expert guidance, and tackle any legal challenge with ease and assurance.",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100),

                field_container(text: 'Username'),
                SizedBox(height: 30),
                field_container(text: 'Password'),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 150),
                    backgroundColor: AppColors.surface,
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(color: AppColors.bgtext),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: Image.asset(
                'assets/images/loginimg.jpg',
                height: 900,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class field_container extends StatelessWidget {
  final String text;
  const field_container({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 400,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.surface),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hint: Text(
              text,
              style: TextStyle(color: AppColors.surface.withValues(alpha: 0.4)),
            ),
          ),
        ),
      ),
    );
  }
}
