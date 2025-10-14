import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vakilhire/Colors/app_colors.dart';

class Loginpc extends StatelessWidget {
  const Loginpc({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 450),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: size.height * 0.1),
                    Text(
                      'Welcome Back !',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: AppColors.surface,
                        fontSize: size.width > 1200 ? 48 : 36,
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
                          height: 1.5,
                        ),
                        children: [
                          const TextSpan(text: "Boost your confidence with "),
                          TextSpan(
                            text: "Legal Hire",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text:
                                " —connect to the right lawyer, get expert guidance, and tackle any legal challenge with ease and assurance.",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 60),
                    field_container(text: 'Username'),
                    SizedBox(height: 30),
                    field_container(text: 'Password'),
                    SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 100,
                        ),
                        backgroundColor: AppColors.surface,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(color: AppColors.bgtext),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(thickness: 1, color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(
                              color: AppColors.surface.withValues(alpha: 0.5),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Divider(thickness: 1, color: Colors.grey),
                        ),
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
                  ],
                ),
              ),

              if (size.width > 900)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/loginimg.jpg',
                      height: size.height * 0.9,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class icon_row extends StatelessWidget {
  final IconData icon;
  const icon_row({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.surface,
      ),
      child: Center(child: FaIcon(icon, color: AppColors.bgtext, size: 24)),
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
