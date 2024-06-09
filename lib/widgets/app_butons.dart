import 'package:flutter/material.dart';

class AppMaterialButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const AppMaterialButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 4,
      color: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      onPressed: () {
        onPressed();
      },
      child:
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 16)),
    );
  }
}
