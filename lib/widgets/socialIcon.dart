import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vakilhire/Colors/app_colors.dart';

class SocialIcon extends StatelessWidget {
  final IconData icon;

  const SocialIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.surface,
      ),
      child: Center(
        child: FaIcon(icon, color: AppColors.bgtext, size: 24),
      ),
    );
  }
}