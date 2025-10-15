import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:vakilhire/Colors/app_colors.dart';
import 'package:vakilhire/Desktop%20web/loginpc.dart';
import 'package:vakilhire/widgets/loginButton.dart';
import 'package:vakilhire/widgets/passwordTextFeild.dart';
import 'package:vakilhire/widgets/userNameTextFeild.dart';

class Loginmob extends StatelessWidget {
  const Loginmob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome Back!",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
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
              SizedBox(height: 40),
              userName(),
              SizedBox(height: 20),
              PasswordField(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 30),
              loginButton(),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                    child: Text(
                      "or continue with",
                      style: TextStyle(
                        color: AppColors.surface.withValues(alpha: 0.5),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  icon_row(icon: FontAwesomeIcons.google),
                  icon_row(icon: FontAwesomeIcons.facebook),
                  icon_row(icon: FontAwesomeIcons.github),
                  icon_row(icon: FontAwesomeIcons.instagram),
                ],
              ),

              SizedBox(height: 100),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  children: [
                    TextSpan(
                      text: "Not a member?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " Register Now",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
