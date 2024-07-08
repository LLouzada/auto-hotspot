import 'package:auto_hotspot/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const AppElevatedButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.accent),
      ),
      onPressed: () {
        onPressed();
      },
      child: Text(text,
          style: const TextStyle(color: AppColors.background, fontSize: 16)),
    );
  }
}
