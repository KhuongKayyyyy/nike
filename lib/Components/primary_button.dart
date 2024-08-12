import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final IconData? iconData;
  final String buttonContent;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    this.iconData,
    required this.buttonContent,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconData != null) ...[
              Icon(
                iconData,
                color: Colors.white,
              ),
              const SizedBox(width: 8),
            ],
            Text(
              buttonContent,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
