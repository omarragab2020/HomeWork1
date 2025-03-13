import 'package:flutter/material.dart';

class ChooseHeight extends StatelessWidget {
  final double selectedHeight;
  final Function(double) onHeightChanged;

  const ChooseHeight({
    super.key,
    required this.selectedHeight,
    required this.onHeightChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xff17172f),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Height :",
            style: TextStyle(color: Colors.grey[500], fontSize: 24),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                selectedHeight.toStringAsFixed(0),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 4),
              Text(
                "CM",
                style: TextStyle(color: Colors.grey[500], fontSize: 18),
              ),
            ],
          ),
          Slider(
            min: 100,
            max: 220,
            value: selectedHeight,
            onChanged: (newValue) {
              onHeightChanged(newValue);
            },
          ),
        ],
      ),
    );
  }
}
