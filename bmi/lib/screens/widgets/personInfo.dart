import 'package:flutter/material.dart';

Widget buildInfoCard({
  required String label,
  required int value,
  required VoidCallback onIncrement,
  required VoidCallback onDecrement,
}) {
  return Expanded(
    child: Container(
      height: 190,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xff17172f),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(label, style: TextStyle(color: Colors.white, fontSize: 22)),
          SizedBox(height: 8),
          Text(
            value.toString(),
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: onDecrement,
                icon: Icon(Icons.remove_circle, color: Colors.white, size: 32),
              ),
              SizedBox(width: 10),
              IconButton(
                onPressed: onIncrement,
                icon: Icon(Icons.add_circle, color: Colors.white, size: 32),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
