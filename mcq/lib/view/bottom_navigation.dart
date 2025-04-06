import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.onPressed,
  });
  final String text;
  final IconData icon;
  final Color color;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          if (text == "Back") Icon(icon, size: 20, color: Colors.white),
          const SizedBox(width: 16),
          Text(text, style: const TextStyle(fontSize: 18)),
          const SizedBox(width: 16),

          if (text == "Next") Icon(icon, size: 20, color: Colors.white),
        ],
      ),
    );
  }
}
