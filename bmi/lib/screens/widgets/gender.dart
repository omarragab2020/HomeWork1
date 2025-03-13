import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildGender({
  required String gender,
  required String selectedGender,
  required Function onTap,
}) {
  bool isSelected = gender == selectedGender;

  return Expanded(
    child: GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xff17172f) : Color(0xff090b24),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              gender == "Female" ? Icons.female : Icons.male,
              size: 60,
              color: isSelected ? Colors.white : Colors.grey,
            ),
            const SizedBox(height: 8),
            Text(
              gender,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
