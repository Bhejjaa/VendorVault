// lib/common/custom_button.dart
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;

  const CustomButton({super.key, 
    required this.text,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50), // Set the button to take full width
      ),
      child: isLoading
          ? const CircularProgressIndicator()
          : Text(
              text,
              style: const TextStyle(fontSize: 25),
            ),
    );
  }
}
