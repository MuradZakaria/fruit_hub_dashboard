import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: double.infinity,
      height: 32,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.deepPurple,
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white,fontSize: 16),
          ),
        ),
      ),
    );
  }
}
