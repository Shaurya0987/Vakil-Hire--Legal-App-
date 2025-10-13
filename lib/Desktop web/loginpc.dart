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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
